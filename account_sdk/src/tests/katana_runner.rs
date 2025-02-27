use serde::Deserialize;
use starknet::accounts::{ExecutionEncoding, SingleOwnerAccount};
use starknet::providers::jsonrpc::HttpTransport;
use starknet::providers::JsonRpcClient;
use starknet::signers::LocalWallet;
use starknet::{core::types::FieldElement, macros::felt, signers::SigningKey};
use std::process::{Child, Command, Stdio};
use std::sync::mpsc;
use std::thread;
use std::time::Duration;
use std::{
    fs,
    io::{BufRead, BufReader, Write},
};
use std::{fs::File, process::ChildStdout, sync::mpsc::Sender};
use std::{
    net::TcpListener,
    path::{Path, PathBuf},
};
use url::Url;

use lazy_static::lazy_static;

use crate::deploy_contract::single_owner_account_with_encoding;

lazy_static! {
    // Signing key and address of the katana prefunded account.
    pub static ref PREFUNDED: (SigningKey, FieldElement) = (
        SigningKey::from_secret_scalar(
            felt!(
                "0x1800000000300000180000000000030000000000003006001800006600"
            ),
        ),
        felt!(
            "0x517ececd29116499f4a1b64b094da79ba08dfd54a3edaa316134c41f8160973"
        )
    );
}

pub fn find_free_port() -> u16 {
    TcpListener::bind("127.0.0.1:0")
        .unwrap()
        .local_addr()
        .unwrap()
        .port()
}

#[derive(Debug, Clone, Deserialize)]
pub struct KatanaRunnerConfig {
    pub port: u16,
    pub katana_path: String,
    pub log_file_path: String,
}

impl KatanaRunnerConfig {
    pub fn from_file(path: impl Into<String>) -> Self {
        let config_string = fs::read_to_string(path.into()).expect("Failed to read config file");

        toml::from_str(&config_string).expect("Failed to parse config file")
    }

    pub fn port(mut self, port: u16) -> Self {
        self.port = port;
        self.log_file_path = KatanaRunnerConfig::add_port_to_filename(&self.log_file_path, port);
        self
    }

    fn add_port_to_filename(file_path: &str, port: u16) -> String {
        let path = Path::new(file_path);
        let stem = path.file_stem().and_then(|s| s.to_str()).unwrap_or("");
        let extension = path.extension().and_then(|s| s.to_str()).unwrap_or("");

        let new_file_name = if extension.is_empty() {
            format!("{}_{}", stem, port)
        } else {
            format!("{}_{}.{}", stem, port, extension)
        };
        let mut new_path = PathBuf::from(path.parent().unwrap_or_else(|| Path::new("")));
        new_path.push(new_file_name);
        new_path.to_string_lossy().into_owned()
    }
}

#[derive(Debug)]
pub struct KatanaRunner {
    child: Child,
    client: JsonRpcClient<HttpTransport>,
}

impl KatanaRunner {
    pub fn new(config: KatanaRunnerConfig) -> Self {
        let mut child = Command::new(config.katana_path)
            .args(["-p", &config.port.to_string()])
            .args(["--json-log"])
            .stdout(Stdio::piped())
            .spawn()
            .expect("failed to start subprocess");

        let stdout = child
            .stdout
            .take()
            .expect("failed to take subprocess stdout");

        let (sender, receiver) = mpsc::channel();

        thread::spawn(move || {
            KatanaRunner::wait_for_server_started_and_signal(&config.log_file_path, stdout, sender);
        });

        receiver
            .recv_timeout(Duration::from_secs(5))
            .expect("timeout waiting for server to start");

        let client = JsonRpcClient::new(HttpTransport::new(
            Url::parse(&format!("http://0.0.0.0:{}/", config.port)).unwrap(),
        ));

        KatanaRunner {
            child,
            client: client,
        }
    }

    pub fn client(&self) -> &JsonRpcClient<HttpTransport> {
        &self.client
    }

    pub async fn prefunded_single_owner_account(
        &self,
    ) -> SingleOwnerAccount<&JsonRpcClient<HttpTransport>, LocalWallet> {
        single_owner_account_with_encoding(
            &self.client,
            PREFUNDED.0.clone(),
            PREFUNDED.1,
            ExecutionEncoding::Legacy,
        )
        .await
    }

    pub fn load() -> Self {
        KatanaRunner::new(KatanaRunnerConfig::from_file("KatanaConfig.toml").port(find_free_port()))
    }

    fn wait_for_server_started_and_signal(
        log_file_path: &str,
        stdout: ChildStdout,
        sender: Sender<()>,
    ) {
        let reader = BufReader::new(stdout);
        KatanaRunner::create_folder_if_nonexistent(log_file_path);
        let mut log_writer = File::create(log_file_path).expect("failed to create log file");

        for line in reader.lines() {
            let line = line.expect("failed to read line from subprocess stdout");
            writeln!(log_writer, "{}", line).expect("failed to write to log file");

            if line.contains(r#""target":"katana""#) {
                sender.send(()).expect("failed to send start signal");
            }
        }
    }

    fn create_folder_if_nonexistent(log_file_path: &str) {
        let path = Path::new(log_file_path);

        if let Some(dir_path) = path.parent() {
            if !dir_path.exists() {
                fs::create_dir_all(dir_path).unwrap();
            }
        }
    }
}

impl Drop for KatanaRunner {
    fn drop(&mut self) {
        if let Err(e) = self.child.kill() {
            eprintln!("Failed to kill katana subprocess: {}", e);
        }
        if let Err(e) = self.child.wait() {
            eprintln!("Failed to wait for katana subprocess: {}", e);
        }
    }
}
