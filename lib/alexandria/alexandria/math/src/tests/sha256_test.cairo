use alexandria_math::sha256;
use array::ArrayTrait;

#[test]
#[available_gas(2000000000)]
fn sha256_empty_test() {
    let mut input = ArrayTrait::<u8>::new();
    let result = sha256::sha256(input);

    // result should be 0xE3B0C44298FC1C149AFBF4C8996FB92427AE41E4649B934CA495991B7852B855
    assert(result.len() == 32, 'invalid result length');
    assert(*result[0] == 0xE3, 'invalid result');
    assert(*result[1] == 0xB0, 'invalid result');
    assert(*result[2] == 0xC4, 'invalid result');
    assert(*result[3] == 0x42, 'invalid result');
    assert(*result[4] == 0x98, 'invalid result');
    assert(*result[5] == 0xFC, 'invalid result');
    assert(*result[6] == 0x1C, 'invalid result');
    assert(*result[7] == 0x14, 'invalid result');
    assert(*result[8] == 0x9A, 'invalid result');
    assert(*result[9] == 0xFB, 'invalid result');
    assert(*result[10] == 0xF4, 'invalid result');
    assert(*result[11] == 0xC8, 'invalid result');
    assert(*result[12] == 0x99, 'invalid result');
    assert(*result[13] == 0x6F, 'invalid result');
    assert(*result[14] == 0xB9, 'invalid result');
    assert(*result[15] == 0x24, 'invalid result');
    assert(*result[16] == 0x27, 'invalid result');
    assert(*result[17] == 0xAE, 'invalid result');
    assert(*result[18] == 0x41, 'invalid result');
    assert(*result[19] == 0xE4, 'invalid result');
    assert(*result[20] == 0x64, 'invalid result');
    assert(*result[21] == 0x9B, 'invalid result');
    assert(*result[22] == 0x93, 'invalid result');
    assert(*result[23] == 0x4C, 'invalid result');
    assert(*result[24] == 0xA4, 'invalid result');
    assert(*result[25] == 0x95, 'invalid result');
    assert(*result[26] == 0x99, 'invalid result');
    assert(*result[27] == 0x1B, 'invalid result');
    assert(*result[28] == 0x78, 'invalid result');
    assert(*result[29] == 0x52, 'invalid result');
    assert(*result[30] == 0xB8, 'invalid result');
    assert(*result[31] == 0x55, 'invalid result');
}

#[test]
#[available_gas(2000000000)]
fn sha256_lorem_ipsum_test() {
    // Lorem ipsum, or lsipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.
    // The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of
    // Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with
    let mut input = ArrayTrait::<u8>::new();
    input.append(0x4C);
    input.append(0x6F);
    input.append(0x72);
    input.append(0x65);
    input.append(0x6D);
    input.append(0x20);
    input.append(0x69);
    input.append(0x70);
    input.append(0x73);
    input.append(0x75);
    input.append(0x6D);
    input.append(0x2C);
    input.append(0x20);
    input.append(0x6F);
    input.append(0x72);
    input.append(0x20);
    input.append(0x6C);
    input.append(0x73);
    input.append(0x69);
    input.append(0x70);
    input.append(0x73);
    input.append(0x75);
    input.append(0x6D);
    input.append(0x20);
    input.append(0x61);
    input.append(0x73);
    input.append(0x20);
    input.append(0x69);
    input.append(0x74);
    input.append(0x20);
    input.append(0x69);
    input.append(0x73);
    input.append(0x20);
    input.append(0x73);
    input.append(0x6F);
    input.append(0x6D);
    input.append(0x65);
    input.append(0x74);
    input.append(0x69);
    input.append(0x6D);
    input.append(0x65);
    input.append(0x73);
    input.append(0x20);
    input.append(0x6B);
    input.append(0x6E);
    input.append(0x6F);
    input.append(0x77);
    input.append(0x6E);
    input.append(0x2C);
    input.append(0x20);
    input.append(0x69);
    input.append(0x73);
    input.append(0x20);
    input.append(0x64);
    input.append(0x75);
    input.append(0x6D);
    input.append(0x6D);
    input.append(0x79);
    input.append(0x20);
    input.append(0x74);
    input.append(0x65);
    input.append(0x78);
    input.append(0x74);
    input.append(0x20);
    input.append(0x75);
    input.append(0x73);
    input.append(0x65);
    input.append(0x64);
    input.append(0x20);
    input.append(0x69);
    input.append(0x6E);
    input.append(0x20);
    input.append(0x6C);
    input.append(0x61);
    input.append(0x79);
    input.append(0x69);
    input.append(0x6E);
    input.append(0x67);
    input.append(0x20);
    input.append(0x6F);
    input.append(0x75);
    input.append(0x74);
    input.append(0x20);
    input.append(0x70);
    input.append(0x72);
    input.append(0x69);
    input.append(0x6E);
    input.append(0x74);
    input.append(0x2C);
    input.append(0x20);
    input.append(0x67);
    input.append(0x72);
    input.append(0x61);
    input.append(0x70);
    input.append(0x68);
    input.append(0x69);
    input.append(0x63);
    input.append(0x20);
    input.append(0x6F);
    input.append(0x72);
    input.append(0x20);
    input.append(0x77);
    input.append(0x65);
    input.append(0x62);
    input.append(0x20);
    input.append(0x64);
    input.append(0x65);
    input.append(0x73);
    input.append(0x69);
    input.append(0x67);
    input.append(0x6E);
    input.append(0x73);
    input.append(0x2E);
    input.append(0x20);
    input.append(0x54);
    input.append(0x68);
    input.append(0x65);
    input.append(0x20);
    input.append(0x70);
    input.append(0x61);
    input.append(0x73);
    input.append(0x73);
    input.append(0x61);
    input.append(0x67);
    input.append(0x65);
    input.append(0x20);
    input.append(0x69);
    input.append(0x73);
    input.append(0x20);
    input.append(0x61);
    input.append(0x74);
    input.append(0x74);
    input.append(0x72);
    input.append(0x69);
    input.append(0x62);
    input.append(0x75);
    input.append(0x74);
    input.append(0x65);
    input.append(0x64);
    input.append(0x20);
    input.append(0x74);
    input.append(0x6F);
    input.append(0x20);
    input.append(0x61);
    input.append(0x6E);
    input.append(0x20);
    input.append(0x75);
    input.append(0x6E);
    input.append(0x6B);
    input.append(0x6E);
    input.append(0x6F);
    input.append(0x77);
    input.append(0x6E);
    input.append(0x20);
    input.append(0x74);
    input.append(0x79);
    input.append(0x70);
    input.append(0x65);
    input.append(0x73);
    input.append(0x65);
    input.append(0x74);
    input.append(0x74);
    input.append(0x65);
    input.append(0x72);
    input.append(0x20);
    input.append(0x69);
    input.append(0x6E);
    input.append(0x20);
    input.append(0x74);
    input.append(0x68);
    input.append(0x65);
    input.append(0x20);
    input.append(0x31);
    input.append(0x35);
    input.append(0x74);
    input.append(0x68);
    input.append(0x20);
    input.append(0x63);
    input.append(0x65);
    input.append(0x6E);
    input.append(0x74);
    input.append(0x75);
    input.append(0x72);
    input.append(0x79);
    input.append(0x20);
    input.append(0x77);
    input.append(0x68);
    input.append(0x6F);
    input.append(0x20);
    input.append(0x69);
    input.append(0x73);
    input.append(0x20);
    input.append(0x74);
    input.append(0x68);
    input.append(0x6F);
    input.append(0x75);
    input.append(0x67);
    input.append(0x68);
    input.append(0x74);
    input.append(0x20);
    input.append(0x74);
    input.append(0x6F);
    input.append(0x20);
    input.append(0x68);
    input.append(0x61);
    input.append(0x76);
    input.append(0x65);
    input.append(0x20);
    input.append(0x73);
    input.append(0x63);
    input.append(0x72);
    input.append(0x61);
    input.append(0x6D);
    input.append(0x62);
    input.append(0x6C);
    input.append(0x65);
    input.append(0x64);
    input.append(0x20);
    input.append(0x70);
    input.append(0x61);
    input.append(0x72);
    input.append(0x74);
    input.append(0x73);
    input.append(0x20);
    input.append(0x6F);
    input.append(0x66);
    input.append(0x20);
    input.append(0x43);
    input.append(0x69);
    input.append(0x63);
    input.append(0x65);
    input.append(0x72);
    input.append(0x6F);
    input.append(0x27);
    input.append(0x73);
    input.append(0x20);
    input.append(0x44);
    input.append(0x65);
    input.append(0x20);
    input.append(0x46);
    input.append(0x69);
    input.append(0x6E);
    input.append(0x69);
    input.append(0x62);
    input.append(0x75);
    input.append(0x73);
    input.append(0x20);
    input.append(0x42);
    input.append(0x6F);
    input.append(0x6E);
    input.append(0x6F);
    input.append(0x72);
    input.append(0x75);
    input.append(0x6D);
    input.append(0x20);
    input.append(0x65);
    input.append(0x74);
    input.append(0x20);
    input.append(0x4D);
    input.append(0x61);
    input.append(0x6C);
    input.append(0x6F);
    input.append(0x72);
    input.append(0x75);
    input.append(0x6D);
    input.append(0x20);
    input.append(0x66);
    input.append(0x6F);
    input.append(0x72);
    input.append(0x20);
    input.append(0x75);
    input.append(0x73);
    input.append(0x65);
    input.append(0x20);
    input.append(0x69);
    input.append(0x6E);
    input.append(0x20);
    input.append(0x61);
    input.append(0x20);
    input.append(0x74);
    input.append(0x79);
    input.append(0x70);
    input.append(0x65);
    input.append(0x20);
    input.append(0x73);
    input.append(0x70);
    input.append(0x65);
    input.append(0x63);
    input.append(0x69);
    input.append(0x6D);
    input.append(0x65);
    input.append(0x6E);
    input.append(0x20);
    input.append(0x62);
    input.append(0x6F);
    input.append(0x6F);
    input.append(0x6B);
    input.append(0x2E);
    input.append(0x20);
    input.append(0x49);
    input.append(0x74);
    input.append(0x20);
    input.append(0x75);
    input.append(0x73);
    input.append(0x75);
    input.append(0x61);
    input.append(0x6C);
    input.append(0x6C);
    input.append(0x79);
    input.append(0x20);
    input.append(0x62);
    input.append(0x65);
    input.append(0x67);
    input.append(0x69);
    input.append(0x6E);
    input.append(0x73);
    input.append(0x20);
    input.append(0x77);
    input.append(0x69);
    input.append(0x74);
    input.append(0x68);

    let result = sha256::sha256(input);

    // result should be 0xD35BF81DDF990122F8B96C7BF88C0737D5080E0C9BC3F7ABF68E6FF0D5F9EA44
    assert(result.len() == 32, 'invalid result length');
    assert(*result[0] == 0xD3, 'invalid result');
    assert(*result[1] == 0x5B, 'invalid result');
    assert(*result[2] == 0xF8, 'invalid result');
    assert(*result[3] == 0x1D, 'invalid result');
    assert(*result[4] == 0xDF, 'invalid result');
    assert(*result[5] == 0x99, 'invalid result');
    assert(*result[6] == 0x01, 'invalid result');
    assert(*result[7] == 0x22, 'invalid result');
    assert(*result[8] == 0xF8, 'invalid result');
    assert(*result[9] == 0xB9, 'invalid result');
    assert(*result[10] == 0x6C, 'invalid result');
    assert(*result[11] == 0x7B, 'invalid result');
    assert(*result[12] == 0xF8, 'invalid result');
    assert(*result[13] == 0x8C, 'invalid result');
    assert(*result[14] == 0x07, 'invalid result');
    assert(*result[15] == 0x37, 'invalid result');
    assert(*result[16] == 0xD5, 'invalid result');
    assert(*result[17] == 0x08, 'invalid result');
    assert(*result[18] == 0x0E, 'invalid result');
    assert(*result[19] == 0x0C, 'invalid result');
    assert(*result[20] == 0x9B, 'invalid result');
    assert(*result[21] == 0xC3, 'invalid result');
    assert(*result[22] == 0xF7, 'invalid result');
    assert(*result[23] == 0xAB, 'invalid result');
    assert(*result[24] == 0xF6, 'invalid result');
    assert(*result[25] == 0x8E, 'invalid result');
    assert(*result[26] == 0x6F, 'invalid result');
    assert(*result[27] == 0xF0, 'invalid result');
    assert(*result[28] == 0xD5, 'invalid result');
    assert(*result[29] == 0xF9, 'invalid result');
    assert(*result[30] == 0xEA, 'invalid result');
    assert(*result[31] == 0x44, 'invalid result');
}
