use starknet::{core::types::FieldElement, providers::jsonrpc::HttpTransport, signers::SigningKey};

use crate::rpc_provider::RpcClientProvider;

mod devnet;
mod katana;
mod katana_runner;

pub use devnet::DevnetProvider;
pub use katana::KatanaProvider;
pub use katana_runner::{KatanaRunner, KatanaRunnerConfig};

pub trait PredeployedProvider
where
    Self: RpcClientProvider<HttpTransport>,
{
    fn prefounded_account(&self) -> PredeployedAccount;
    fn predeployed_fee_token(&self) -> PredeployedContract;
    fn predeployed_udc(&self) -> PredeployedContract;
}

pub struct PredeployedAccount {
    pub account_address: FieldElement,
    pub private_key: FieldElement,
    pub public_key: FieldElement,
}

impl PredeployedAccount {
    pub fn signing_key(&self) -> SigningKey {
        SigningKey::from_secret_scalar(self.private_key)
    }
}

pub struct PredeployedContract {
    pub address: FieldElement,
    pub class_hash: FieldElement,
}
