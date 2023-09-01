// This file is script-generated.
// Don't modify it manually!
// See test_gen_scripts/auth/expand_auth_data_test.py for details
use core::traits::Into;
use core::option::OptionTrait;
use result::ResultTrait;
use webauthn_auth::ecdsa::{verify_ecdsa, verify_hashed_ecdsa, VerifyEcdsaError};
use webauthn_auth::types::AuthenticatorData;
use webauthn_auth::webauthn::ImplArrayu8TryIntoAuthData;
use webauthn_auth::errors::AuthnErrorIntoFelt252;
use webauthn_auth::webauthn::expand_auth_data_and_verify_rp_id_hash;
use starknet::secp256r1::Secp256r1Impl;
use starknet::secp256r1::Secp256r1Point;
use starknet::SyscallResultTrait;
use array::ArrayTrait;

#[test]
#[available_gas(200000000000)]
fn test_expand_auth_data_0() {
	let mut auth_data: Array<u8> = ArrayTrait::new();
	auth_data.append(0xc7);
	auth_data.append(0x85);
	auth_data.append(0x6b);
	auth_data.append(0xd3);
	auth_data.append(0x26);
	auth_data.append(0x6a);
	auth_data.append(0x18);
	auth_data.append(0xfd);
	auth_data.append(0xaa);
	auth_data.append(0x7e);
	auth_data.append(0x37);
	auth_data.append(0xe8);
	auth_data.append(0x1d);
	auth_data.append(0x8d);
	auth_data.append(0x59);
	auth_data.append(0x57);
	auth_data.append(0xa);
	auth_data.append(0xff);
	auth_data.append(0xf3);
	auth_data.append(0x50);
	auth_data.append(0x3b);
	auth_data.append(0x3b);
	auth_data.append(0x8);
	auth_data.append(0x63);
	auth_data.append(0x96);
	auth_data.append(0x7);
	auth_data.append(0x83);
	auth_data.append(0xa2);
	auth_data.append(0x23);
	auth_data.append(0xae);
	auth_data.append(0xa1);
	auth_data.append(0x52);
	auth_data.append(0x15);
	auth_data.append(0x0);
	auth_data.append(0x0);
	auth_data.append(0x0);
	auth_data.append(0xd);
	let ad_o: Option<AuthenticatorData> = ImplArrayu8TryIntoAuthData::try_into(auth_data);
	let ad = ad_o.unwrap();
	assert(ad.sign_count == 13, 'Expected equal! count');
	assert(ad.flags == 21, 'Expected equal! flags');
	
	let mut rp_id_hash: Array<u8> = ArrayTrait::new();
	rp_id_hash.append(0xc7);
	rp_id_hash.append(0x85);
	rp_id_hash.append(0x6b);
	rp_id_hash.append(0xd3);
	rp_id_hash.append(0x26);
	rp_id_hash.append(0x6a);
	rp_id_hash.append(0x18);
	rp_id_hash.append(0xfd);
	rp_id_hash.append(0xaa);
	rp_id_hash.append(0x7e);
	rp_id_hash.append(0x37);
	rp_id_hash.append(0xe8);
	rp_id_hash.append(0x1d);
	rp_id_hash.append(0x8d);
	rp_id_hash.append(0x59);
	rp_id_hash.append(0x57);
	rp_id_hash.append(0xa);
	rp_id_hash.append(0xff);
	rp_id_hash.append(0xf3);
	rp_id_hash.append(0x50);
	rp_id_hash.append(0x3b);
	rp_id_hash.append(0x3b);
	rp_id_hash.append(0x8);
	rp_id_hash.append(0x63);
	rp_id_hash.append(0x96);
	rp_id_hash.append(0x7);
	rp_id_hash.append(0x83);
	rp_id_hash.append(0xa2);
	rp_id_hash.append(0x23);
	rp_id_hash.append(0xae);
	rp_id_hash.append(0xa1);
	rp_id_hash.append(0x52);
	assert(ad.rp_id_hash == rp_id_hash, 'Expected equal! arrays');
	
}

#[test]
#[available_gas(200000000000)]
fn test_expand_auth_data_1() {
	let mut auth_data: Array<u8> = ArrayTrait::new();
	auth_data.append(0x88);
	auth_data.append(0xb);
	auth_data.append(0x2b);
	auth_data.append(0xe7);
	auth_data.append(0x83);
	auth_data.append(0x8b);
	auth_data.append(0x30);
	auth_data.append(0xab);
	auth_data.append(0x55);
	auth_data.append(0x53);
	auth_data.append(0x71);
	auth_data.append(0x10);
	auth_data.append(0xa6);
	auth_data.append(0xab);
	auth_data.append(0x8b);
	auth_data.append(0xd0);
	auth_data.append(0xfd);
	auth_data.append(0x91);
	auth_data.append(0xe9);
	auth_data.append(0x42);
	auth_data.append(0x52);
	auth_data.append(0x22);
	auth_data.append(0x70);
	auth_data.append(0x29);
	auth_data.append(0x34);
	auth_data.append(0x29);
	auth_data.append(0x7a);
	auth_data.append(0xc7);
	auth_data.append(0x98);
	auth_data.append(0x7);
	auth_data.append(0x71);
	auth_data.append(0x66);
	auth_data.append(0x1d);
	auth_data.append(0x0);
	auth_data.append(0x0);
	auth_data.append(0x0);
	auth_data.append(0x59);
	let ad_o: Option<AuthenticatorData> = ImplArrayu8TryIntoAuthData::try_into(auth_data);
	let ad = ad_o.unwrap();
	assert(ad.sign_count == 89, 'Expected equal! count');
	assert(ad.flags == 29, 'Expected equal! flags');
	
	let mut rp_id_hash: Array<u8> = ArrayTrait::new();
	rp_id_hash.append(0x88);
	rp_id_hash.append(0xb);
	rp_id_hash.append(0x2b);
	rp_id_hash.append(0xe7);
	rp_id_hash.append(0x83);
	rp_id_hash.append(0x8b);
	rp_id_hash.append(0x30);
	rp_id_hash.append(0xab);
	rp_id_hash.append(0x55);
	rp_id_hash.append(0x53);
	rp_id_hash.append(0x71);
	rp_id_hash.append(0x10);
	rp_id_hash.append(0xa6);
	rp_id_hash.append(0xab);
	rp_id_hash.append(0x8b);
	rp_id_hash.append(0xd0);
	rp_id_hash.append(0xfd);
	rp_id_hash.append(0x91);
	rp_id_hash.append(0xe9);
	rp_id_hash.append(0x42);
	rp_id_hash.append(0x52);
	rp_id_hash.append(0x22);
	rp_id_hash.append(0x70);
	rp_id_hash.append(0x29);
	rp_id_hash.append(0x34);
	rp_id_hash.append(0x29);
	rp_id_hash.append(0x7a);
	rp_id_hash.append(0xc7);
	rp_id_hash.append(0x98);
	rp_id_hash.append(0x7);
	rp_id_hash.append(0x71);
	rp_id_hash.append(0x66);
	assert(ad.rp_id_hash == rp_id_hash, 'Expected equal! arrays');
	
}

#[test]
#[available_gas(200000000000)]
fn test_expand_auth_data_2() {
	let mut auth_data: Array<u8> = ArrayTrait::new();
	auth_data.append(0x88);
	auth_data.append(0xb);
	auth_data.append(0x2b);
	auth_data.append(0xe7);
	auth_data.append(0x83);
	auth_data.append(0x8b);
	auth_data.append(0x30);
	auth_data.append(0xab);
	auth_data.append(0x55);
	auth_data.append(0x53);
	auth_data.append(0x71);
	auth_data.append(0x10);
	auth_data.append(0xa6);
	auth_data.append(0xab);
	auth_data.append(0x8b);
	auth_data.append(0xd0);
	auth_data.append(0xfd);
	auth_data.append(0x91);
	auth_data.append(0xe9);
	auth_data.append(0x42);
	auth_data.append(0x52);
	auth_data.append(0x22);
	auth_data.append(0x70);
	auth_data.append(0x29);
	auth_data.append(0x34);
	auth_data.append(0x29);
	auth_data.append(0x7a);
	auth_data.append(0xc7);
	auth_data.append(0x98);
	auth_data.append(0x7);
	auth_data.append(0x71);
	auth_data.append(0x66);
	auth_data.append(0x5);
	auth_data.append(0x0);
	auth_data.append(0x10);
	auth_data.append(0x0);
	auth_data.append(0x0);
	let ad_o: Option<AuthenticatorData> = ImplArrayu8TryIntoAuthData::try_into(auth_data);
	let ad = ad_o.unwrap();
	assert(ad.sign_count == 1048576, 'Expected equal! count');
	assert(ad.flags == 5, 'Expected equal! flags');
	
	let mut rp_id_hash: Array<u8> = ArrayTrait::new();
	rp_id_hash.append(0x88);
	rp_id_hash.append(0xb);
	rp_id_hash.append(0x2b);
	rp_id_hash.append(0xe7);
	rp_id_hash.append(0x83);
	rp_id_hash.append(0x8b);
	rp_id_hash.append(0x30);
	rp_id_hash.append(0xab);
	rp_id_hash.append(0x55);
	rp_id_hash.append(0x53);
	rp_id_hash.append(0x71);
	rp_id_hash.append(0x10);
	rp_id_hash.append(0xa6);
	rp_id_hash.append(0xab);
	rp_id_hash.append(0x8b);
	rp_id_hash.append(0xd0);
	rp_id_hash.append(0xfd);
	rp_id_hash.append(0x91);
	rp_id_hash.append(0xe9);
	rp_id_hash.append(0x42);
	rp_id_hash.append(0x52);
	rp_id_hash.append(0x22);
	rp_id_hash.append(0x70);
	rp_id_hash.append(0x29);
	rp_id_hash.append(0x34);
	rp_id_hash.append(0x29);
	rp_id_hash.append(0x7a);
	rp_id_hash.append(0xc7);
	rp_id_hash.append(0x98);
	rp_id_hash.append(0x7);
	rp_id_hash.append(0x71);
	rp_id_hash.append(0x66);
	assert(ad.rp_id_hash == rp_id_hash, 'Expected equal! arrays');
	
}

#[test]
#[available_gas(200000000000)]
fn test_expand_auth_data_3() {
	let mut auth_data: Array<u8> = ArrayTrait::new();
	auth_data.append(0x82);
	auth_data.append(0xca);
	auth_data.append(0xb7);
	auth_data.append(0xdf);
	auth_data.append(0xa);
	auth_data.append(0xbf);
	auth_data.append(0xb9);
	auth_data.append(0xd9);
	auth_data.append(0x5d);
	auth_data.append(0xca);
	auth_data.append(0x4e);
	auth_data.append(0x59);
	auth_data.append(0x37);
	auth_data.append(0xce);
	auth_data.append(0x29);
	auth_data.append(0x68);
	auth_data.append(0xc7);
	auth_data.append(0x98);
	auth_data.append(0xc7);
	auth_data.append(0x26);
	auth_data.append(0xfe);
	auth_data.append(0xa4);
	auth_data.append(0x8c);
	auth_data.append(0x1);
	auth_data.append(0x6b);
	auth_data.append(0xf9);
	auth_data.append(0x76);
	auth_data.append(0x32);
	auth_data.append(0x21);
	auth_data.append(0xef);
	auth_data.append(0xda);
	auth_data.append(0x13);
	auth_data.append(0x2b);
	auth_data.append(0x0);
	auth_data.append(0x0);
	auth_data.append(0x0);
	auth_data.append(0x13);
	let ad_o: Option<AuthenticatorData> = ImplArrayu8TryIntoAuthData::try_into(auth_data);
	let ad = ad_o.unwrap();
	assert(ad.sign_count == 19, 'Expected equal! count');
	assert(ad.flags == 43, 'Expected equal! flags');
	
	let mut rp_id_hash: Array<u8> = ArrayTrait::new();
	rp_id_hash.append(0x82);
	rp_id_hash.append(0xca);
	rp_id_hash.append(0xb7);
	rp_id_hash.append(0xdf);
	rp_id_hash.append(0xa);
	rp_id_hash.append(0xbf);
	rp_id_hash.append(0xb9);
	rp_id_hash.append(0xd9);
	rp_id_hash.append(0x5d);
	rp_id_hash.append(0xca);
	rp_id_hash.append(0x4e);
	rp_id_hash.append(0x59);
	rp_id_hash.append(0x37);
	rp_id_hash.append(0xce);
	rp_id_hash.append(0x29);
	rp_id_hash.append(0x68);
	rp_id_hash.append(0xc7);
	rp_id_hash.append(0x98);
	rp_id_hash.append(0xc7);
	rp_id_hash.append(0x26);
	rp_id_hash.append(0xfe);
	rp_id_hash.append(0xa4);
	rp_id_hash.append(0x8c);
	rp_id_hash.append(0x1);
	rp_id_hash.append(0x6b);
	rp_id_hash.append(0xf9);
	rp_id_hash.append(0x76);
	rp_id_hash.append(0x32);
	rp_id_hash.append(0x21);
	rp_id_hash.append(0xef);
	rp_id_hash.append(0xda);
	rp_id_hash.append(0x13);
	assert(ad.rp_id_hash == rp_id_hash, 'Expected equal! arrays');
	
}

#[test]
#[available_gas(200000000000)]
fn test_verify_rp_id_0() {
	let mut auth_data: Array<u8> = ArrayTrait::new();
	auth_data.append(0xc7);
	auth_data.append(0x85);
	auth_data.append(0x6b);
	auth_data.append(0xd3);
	auth_data.append(0x26);
	auth_data.append(0x6a);
	auth_data.append(0x18);
	auth_data.append(0xfd);
	auth_data.append(0xaa);
	auth_data.append(0x7e);
	auth_data.append(0x37);
	auth_data.append(0xe8);
	auth_data.append(0x1d);
	auth_data.append(0x8d);
	auth_data.append(0x59);
	auth_data.append(0x57);
	auth_data.append(0xa);
	auth_data.append(0xff);
	auth_data.append(0xf3);
	auth_data.append(0x50);
	auth_data.append(0x3b);
	auth_data.append(0x3b);
	auth_data.append(0x8);
	auth_data.append(0x63);
	auth_data.append(0x96);
	auth_data.append(0x7);
	auth_data.append(0x83);
	auth_data.append(0xa2);
	auth_data.append(0x23);
	auth_data.append(0xae);
	auth_data.append(0xa1);
	auth_data.append(0x52);
	auth_data.append(0x15);
	auth_data.append(0x0);
	auth_data.append(0x0);
	auth_data.append(0x0);
	auth_data.append(0xd);
	let mut rp_id: Array<u8> = ArrayTrait::new();
	rp_id.append(0x72);
	rp_id.append(0x65);
	rp_id.append(0x6c);
	rp_id.append(0x79);
	rp_id.append(0x69);
	rp_id.append(0x6e);
	rp_id.append(0x67);
	rp_id.append(0x2d);
	rp_id.append(0x70);
	rp_id.append(0x61);
	rp_id.append(0x72);
	rp_id.append(0x74);
	rp_id.append(0x79);
	rp_id.append(0x2e);
	rp_id.append(0x69);
	rp_id.append(0x64);
	expand_auth_data_and_verify_rp_id_hash(auth_data, rp_id).unwrap();
	
}

#[test]
#[available_gas(200000000000)]
fn test_verify_rp_id_1() {
	let mut auth_data: Array<u8> = ArrayTrait::new();
	auth_data.append(0x88);
	auth_data.append(0xb);
	auth_data.append(0x2b);
	auth_data.append(0xe7);
	auth_data.append(0x83);
	auth_data.append(0x8b);
	auth_data.append(0x30);
	auth_data.append(0xab);
	auth_data.append(0x55);
	auth_data.append(0x53);
	auth_data.append(0x71);
	auth_data.append(0x10);
	auth_data.append(0xa6);
	auth_data.append(0xab);
	auth_data.append(0x8b);
	auth_data.append(0xd0);
	auth_data.append(0xfd);
	auth_data.append(0x91);
	auth_data.append(0xe9);
	auth_data.append(0x42);
	auth_data.append(0x52);
	auth_data.append(0x22);
	auth_data.append(0x70);
	auth_data.append(0x29);
	auth_data.append(0x34);
	auth_data.append(0x29);
	auth_data.append(0x7a);
	auth_data.append(0xc7);
	auth_data.append(0x98);
	auth_data.append(0x7);
	auth_data.append(0x71);
	auth_data.append(0x66);
	auth_data.append(0x1d);
	auth_data.append(0x0);
	auth_data.append(0x0);
	auth_data.append(0x0);
	auth_data.append(0x59);
	let mut rp_id: Array<u8> = ArrayTrait::new();
	rp_id.append(0x67);
	rp_id.append(0x6f);
	rp_id.append(0x67);
	rp_id.append(0x69);
	rp_id.append(0x65);
	rp_id.append(0x6c);
	rp_id.append(0x2e);
	rp_id.append(0x73);
	rp_id.append(0x72);
	rp_id.append(0x6f);
	rp_id.append(0x67);
	rp_id.append(0x69);
	rp_id.append(0x65);
	rp_id.append(0x6c);
	rp_id.append(0x2e);
	rp_id.append(0x70);
	rp_id.append(0x6c);
	expand_auth_data_and_verify_rp_id_hash(auth_data, rp_id).unwrap();
	
}

#[test]
#[available_gas(200000000000)]
fn test_verify_rp_id_2() {
	let mut auth_data: Array<u8> = ArrayTrait::new();
	auth_data.append(0x88);
	auth_data.append(0xb);
	auth_data.append(0x2b);
	auth_data.append(0xe7);
	auth_data.append(0x83);
	auth_data.append(0x8b);
	auth_data.append(0x30);
	auth_data.append(0xab);
	auth_data.append(0x55);
	auth_data.append(0x53);
	auth_data.append(0x71);
	auth_data.append(0x10);
	auth_data.append(0xa6);
	auth_data.append(0xab);
	auth_data.append(0x8b);
	auth_data.append(0xd0);
	auth_data.append(0xfd);
	auth_data.append(0x91);
	auth_data.append(0xe9);
	auth_data.append(0x42);
	auth_data.append(0x52);
	auth_data.append(0x22);
	auth_data.append(0x70);
	auth_data.append(0x29);
	auth_data.append(0x34);
	auth_data.append(0x29);
	auth_data.append(0x7a);
	auth_data.append(0xc7);
	auth_data.append(0x98);
	auth_data.append(0x7);
	auth_data.append(0x71);
	auth_data.append(0x66);
	auth_data.append(0x5);
	auth_data.append(0x0);
	auth_data.append(0x10);
	auth_data.append(0x0);
	auth_data.append(0x0);
	let mut rp_id: Array<u8> = ArrayTrait::new();
	rp_id.append(0x67);
	rp_id.append(0x6f);
	rp_id.append(0x67);
	rp_id.append(0x69);
	rp_id.append(0x65);
	rp_id.append(0x6c);
	rp_id.append(0x2e);
	rp_id.append(0x73);
	rp_id.append(0x72);
	rp_id.append(0x6f);
	rp_id.append(0x67);
	rp_id.append(0x69);
	rp_id.append(0x65);
	rp_id.append(0x6c);
	rp_id.append(0x2e);
	rp_id.append(0x70);
	rp_id.append(0x6c);
	expand_auth_data_and_verify_rp_id_hash(auth_data, rp_id).unwrap();
	
}

#[test]
#[available_gas(200000000000)]
fn test_verify_rp_id_3() {
	let mut auth_data: Array<u8> = ArrayTrait::new();
	auth_data.append(0x82);
	auth_data.append(0xca);
	auth_data.append(0xb7);
	auth_data.append(0xdf);
	auth_data.append(0xa);
	auth_data.append(0xbf);
	auth_data.append(0xb9);
	auth_data.append(0xd9);
	auth_data.append(0x5d);
	auth_data.append(0xca);
	auth_data.append(0x4e);
	auth_data.append(0x59);
	auth_data.append(0x37);
	auth_data.append(0xce);
	auth_data.append(0x29);
	auth_data.append(0x68);
	auth_data.append(0xc7);
	auth_data.append(0x98);
	auth_data.append(0xc7);
	auth_data.append(0x26);
	auth_data.append(0xfe);
	auth_data.append(0xa4);
	auth_data.append(0x8c);
	auth_data.append(0x1);
	auth_data.append(0x6b);
	auth_data.append(0xf9);
	auth_data.append(0x76);
	auth_data.append(0x32);
	auth_data.append(0x21);
	auth_data.append(0xef);
	auth_data.append(0xda);
	auth_data.append(0x13);
	auth_data.append(0x2b);
	auth_data.append(0x0);
	auth_data.append(0x0);
	auth_data.append(0x0);
	auth_data.append(0x13);
	let mut rp_id: Array<u8> = ArrayTrait::new();
	rp_id.append(0x61);
	rp_id.append(0x61);
	rp_id.append(0x61);
	rp_id.append(0x61);
	rp_id.append(0x61);
	rp_id.append(0x61);
	rp_id.append(0x61);
	rp_id.append(0x61);
	rp_id.append(0x61);
	rp_id.append(0x61);
	rp_id.append(0x61);
	rp_id.append(0x61);
	rp_id.append(0x61);
	rp_id.append(0x61);
	expand_auth_data_and_verify_rp_id_hash(auth_data, rp_id).unwrap();
	
}

