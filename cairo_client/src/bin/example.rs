use std::vec;

use anyhow::Result;

use cairo_client::compile::DevCompiler;
use cairo_client::generate::{DevGenerator, DummyGenerator};
use cairo_client::logger::{LoggerCompiler, LoggerGenerator, LoggerParser};
use cairo_client::parse::DevParser;
use cairo_client::run::DevRunner;
use cairo_felt::Felt252;
use cairo_lang_runner::Arg;

fn main() -> Result<()> {
    let generator = LoggerGenerator::new(DummyGenerator::new("init", "init"));
    let compiler = LoggerCompiler::new(generator.generate()?);
    let parser = LoggerParser::new(compiler.compile()?);
    let runner = parser.parse()?;
    let arguments = vec![
        Arg::Value(Felt252::new(0xF1)),
        Arg::Array(
            vec![0x11, 0x12, 0x13, 0x14]
                .into_iter()
                .map(Felt252::new)
                .collect(),
        ),
        Arg::Array(
            vec![0x21, 0x22, 0x23, 0x24]
                .into_iter()
                .map(Felt252::new)
                .collect(),
        ),
        Arg::Array(
            vec![0x31, 0x32, 0x33, 0x34]
                .into_iter()
                .map(Felt252::new)
                .collect(),
        ),
        Arg::Value(Felt252::new(0xF2)),
    ];
    runner.run("::testing", &arguments).unwrap();
    Ok(())
}
