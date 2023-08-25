// This file is script-generated.
// Don't modify it manually!
// See test_gen_scripts/verify_ecdsa_test.py for details
use core::traits::Into;
use core::option::OptionTrait;
use webauthn_auth::ecdsa::{verify_ecdsa, verify_hashed_ecdsa, VerifyEcdsaError};
use starknet::secp256r1::Secp256r1Impl;
use starknet::secp256r1::Secp256r1Point;
use starknet::SyscallResultTrait;
use array::ArrayTrait;

#[test]
#[available_gas(200000000000)]
fn test_verify_ecdsa_short() {
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    63605995978354502441918110539935036052105681948425641641337042403789496963498,
	    95342040677802632238659682239328218340407657400236772101556588146122603566204
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 19605037219926392778672531419765390538468536436610948621672223613952078913081;
	let s = 37935489478595110371802394966359961848269470793622998456327372028878983183075;
	let msg = 49;
	
	match verify_hashed_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => (),
	    Result::Err(m) => assert(false, m.into())
	}
}

#[test]
#[available_gas(200000000000)]
fn test_verify_ecdsa() {
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    36043968898762389056548063826204813288167569866493669087736934358647680996390,
	    112409513638648580698278122651473267052012566357079595767467489194537584334155
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 107043474989227186755340872730056118046314784283965501529321748824317516881966;
	let s = 56880855593064094765552319362752861911788684406444123550515167021427167222196;
	let msg = 22405534230753928650781647905;
	
	match verify_hashed_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => (),
	    Result::Err(m) => assert(false, m.into())
	}
}

#[test]
#[available_gas(200000000000)]
fn test_verify_ecdsa_long() {
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    47952774854360962795683602387962481383382757721757557258142522911054872970086,
	    103152302028009661552008418037252829855908787260956595608745324053954756371349
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 10866213977342124194974066649430220799078606832769300016714388599327231653317;
	let s = 23243440812304142903644702897276204103319225612881249047536574399135826555706;
	let msg = 149135777980097582634002128993283245052269503470703527156581804847063441697;
	
	match verify_hashed_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => (),
	    Result::Err(m) => assert(false, m.into())
	}
}

#[test]
#[available_gas(200000000000)]
fn test_ecdsa_wrong_arguments() {
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    2751422624181396876927064315444630935049494779761990862195131723010768700027,
	    17739061001898936877020671119924185005111043888334524717481171381850365856073
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 0;
	let s = 0;
	let msg = 6214289900658384436962189733492;
	
	match verify_hashed_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => assert(false, 'Should Error!'),
	    Result::Err(m) => match m {
	        VerifyEcdsaError::WrongArgument => (),
	        VerifyEcdsaError::InvalidSignature =>assert(false, 'Wrong Error!'),
	        VerifyEcdsaError::SyscallError => assert(false, 'Wrong Error!'),
	    }
	}
}

#[test]
#[available_gas(200000000000)]
fn test_ecdsa_invalid_signature() {
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    3012544713188250147561535604078175489827299505427295523276542138123013153734,
	    86295174745281074088859714989075301111785512054400848934413650969484386003324
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 1685921040196810760990504489940505466063205635027428221025789572749181574075;
	let s = 73386273169230512316521677291746480772438714412406513878913857815598438236456;
	let msg = 111110000011111;
	
	match verify_hashed_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => assert(false, 'Should Error!'),
	    Result::Err(m) => match m {
	        VerifyEcdsaError::WrongArgument => assert(false, 'Wrong Error!'),
	        VerifyEcdsaError::InvalidSignature => (),
	        VerifyEcdsaError::SyscallError => assert(false, 'Wrong Error!'),
	    }
	}
}

#[test]
#[available_gas(200000000000)]
fn test_verify_ecdsa_with_hash_0() {
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    95645779459613152324970664994087045576732274323199845230261499155728253237959,
	    92515576286974865562334045291581023176907055829154368964978997897988527544398
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 40899309037692083425575303255846807737107637646222287199958184279114255136138;
	let s = 47651545962503742254054510500929797425605797029770256618120444023059455571531;
	let mut msg: Array<u8> = ArrayTrait::new();
	msg.append(0x31);
	
	
	match verify_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => (),
	    Result::Err(m) => assert(false, m.into())
	}
}

#[test]
#[available_gas(200000000000)]
fn test_verify_ecdsa_with_hash_1() {
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    66513541861157665593434381164736482643356092359513820034537765406156778561624,
	    89960027063572633922369877098593475952643028077897951972273408089073743140575
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 104375103505119856895356031492978722211542227701968361935479806346286932843480;
	let s = 77722910853699284520185033684658652349905709352741246216710900674407213851651;
	let mut msg: Array<u8> = ArrayTrait::new();
	msg.append(0x48);
	msg.append(0x65);
	msg.append(0x6c);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x20);
	msg.append(0x57);
	msg.append(0x6f);
	msg.append(0x72);
	msg.append(0x6c);
	msg.append(0x64);
	msg.append(0x21);
	
	
	match verify_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => (),
	    Result::Err(m) => assert(false, m.into())
	}
}

#[test]
#[available_gas(200000000000)]
fn test_verify_ecdsa_with_hash_2() {
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    93967541302539108405178214518276073620394611641227841922804945785474807735025,
	    20813583692674908347613041069240551009385523090211547267977098907123262385607
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 44145168518866524125714305629193263930166297982558069048028615781668972392355;
	let s = 47630545570768309580571823803133707424377546113928612147246525317019823159091;
	let mut msg: Array<u8> = ArrayTrait::new();
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	
	
	match verify_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => (),
	    Result::Err(m) => assert(false, m.into())
	}
}

