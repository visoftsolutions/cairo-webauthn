%lang starknet
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.alloc import alloc

from src.ec import EcPoint
from src.bigint import BigInt3

from src.webauthn import Webauthn

@external
func test_verify_1{syscall_ptr : felt*, range_check_ptr, bitwise_ptr: BitwiseBuiltin*}():
    let public_key_pt = EcPoint(
        BigInt3(52743338060272243486442687, 8356564404182767302564342, 18898795645626225295972184),
        BigInt3(8561359831707316770154247, 74234461271779437484232373, 11454876819198723055787928),
    )
    let r = BigInt3(59829153764609223375002003, 13920919192349440464502713, 2777691488451091769567248)
    let s = BigInt3(60763034848352918061918403, 34664502757747413800664556, 11406538044313554183849549)

    let type_offset_len = 2
    let type_offset_rem = 1

    let challenge_offset_len = 9
    let challenge_offset_rem = 0
    let challenge_len = 17
    let challenge_rem = 2
    let (challenge) = alloc()
    assert challenge[0] = 813183028
    assert challenge[1] = 879047521
    assert challenge[2] = 1684224052
    assert challenge[3] = 895825200
    assert challenge[4] = 828518449
    assert challenge[5] = 1664497968
    assert challenge[6] = 878994482
    assert challenge[7] = 1647338340
    assert challenge[8] = 811872312
    assert challenge[9] = 878862896
    assert challenge[10] = 825373744
    assert challenge[11] = 959854180
    assert challenge[12] = 859398963
    assert challenge[13] = 825636148
    assert challenge[14] = 942761062
    assert challenge[15] = 1667327286
    assert challenge[16] = 13687

    let origin_offset_len = 28
    let origin_offset_rem = 2
    let origin_len = 13
    let (origin) = alloc()
    assert origin[0] = 1752462448
    assert origin[1] = 1933193007
    assert origin[2] = 1668247156
    assert origin[3] = 1919904876
    assert origin[4] = 1701981541
    assert origin[5] = 825454708
    assert origin[6] = 964130678
    assert origin[7] = 779121253
    assert origin[8] = 1986618743
    assert origin[9] = 778264946
    assert origin[10] = 1953655140
    assert origin[11] = 1734684263
    assert origin[12] = 103

    let client_data_json_len = 47
    let client_data_json_rem = 1
    let (client_data_json) = alloc()
    assert client_data_json[0] = 2065855609
    assert client_data_json[1] = 1885676090
    assert client_data_json[2] = 578250082
    assert client_data_json[3] = 1635087464
    assert client_data_json[4] = 1848534885
    assert client_data_json[5] = 1948396578
    assert client_data_json[6] = 1667785068
    assert client_data_json[7] = 1818586727
    assert client_data_json[8] = 1696741922
    assert client_data_json[9] = 813183028
    assert client_data_json[10] = 879047521
    assert client_data_json[11] = 1684224052
    assert client_data_json[12] = 895825200
    assert client_data_json[13] = 828518449
    assert client_data_json[14] = 1664497968
    assert client_data_json[15] = 878994482
    assert client_data_json[16] = 1647338340
    assert client_data_json[17] = 811872312
    assert client_data_json[18] = 878862896
    assert client_data_json[19] = 825373744
    assert client_data_json[20] = 959854180
    assert client_data_json[21] = 859398963
    assert client_data_json[22] = 825636148
    assert client_data_json[23] = 942761062
    assert client_data_json[24] = 1667327286
    assert client_data_json[25] = 896999980
    assert client_data_json[26] = 577729129
    assert client_data_json[27] = 1734962722
    assert client_data_json[28] = 975333492
    assert client_data_json[29] = 1953526586
    assert client_data_json[30] = 791634799
    assert client_data_json[31] = 1853125231
    assert client_data_json[32] = 1819043186
    assert client_data_json[33] = 761606451
    assert client_data_json[34] = 1886665079
    assert client_data_json[35] = 2004233840
    assert client_data_json[36] = 1919252073
    assert client_data_json[37] = 1702309475
    assert client_data_json[38] = 1634890866
    assert client_data_json[39] = 1768187749
    assert client_data_json[40] = 778528546
    assert client_data_json[41] = 740451186
    assert client_data_json[42] = 1869837135
    assert client_data_json[43] = 1919510377
    assert client_data_json[44] = 1847736934
    assert client_data_json[45] = 1634497381
    assert client_data_json[46] = 2097152000

    let authenticator_data_len = 10
    let authenticator_data_rem = 1
    let (authenticator_data) = alloc()
    assert authenticator_data[0] = 547978947
    assert authenticator_data[1] = 4176460842
    assert authenticator_data[2] = 3389847498
    assert authenticator_data[3] = 3141667658
    assert authenticator_data[4] = 164671177
    assert authenticator_data[5] = 2421450441
    assert authenticator_data[6] = 2918684036
    assert authenticator_data[7] = 4202036947
    assert authenticator_data[8] = 83886080
    assert authenticator_data[9] = 0

    Webauthn.verify(public_key_pt, r, s,
        type_offset_len, type_offset_rem,
        challenge_offset_len, challenge_offset_rem, challenge_len, challenge_rem, challenge,
        origin_offset_len, origin_offset_rem, origin_len, origin,
        client_data_json_len, client_data_json_rem, client_data_json,
        authenticator_data_len, authenticator_data_rem, authenticator_data
    )

    return ()
end

@external
func test_verify_2{syscall_ptr : felt*, range_check_ptr, bitwise_ptr: BitwiseBuiltin*}():
    let public_key_pt = EcPoint(
        BigInt3(68771434430694404260836634, 66633780841359531151283366, 14259391536917482115299254),
        BigInt3(15143078500912722485799317, 6719228382483657703164717, 5845062894556851529125),
    )
    let r = BigInt3(37278954292573957828508155, 63210244753363287212884911, 6138938596067845166121299)
    let s = BigInt3(37109308354591296024590714, 14601938862236783601648223, 2072435219191356476548166)

    let type_offset_len = 2
    let type_offset_rem = 1

    let challenge_offset_len = 9
    let challenge_offset_rem = 0
    let challenge_len = 16
    let challenge_rem = 0
    let (challenge) = alloc()
    assert challenge[0] = 813195825
    assert challenge[1] = 875848505
    assert challenge[2] = 808674100
    assert challenge[3] = 1681482288
    assert challenge[4] = 1650603364
    assert challenge[5] = 909455926
    assert challenge[6] = 1647862625
    assert challenge[7] = 808661816
    assert challenge[8] = 811743282
    assert challenge[9] = 1630681138
    assert challenge[10] = 942880054
    assert challenge[11] = 845560120
    assert challenge[12] = 1714841137
    assert challenge[13] = 878785074
    assert challenge[14] = 959983669
    assert challenge[15] = 842282547

    let origin_offset_len = 28
    let origin_offset_rem = 2
    let origin_len = 13
    let (origin) = alloc()
    assert origin[0] = 1752462448
    assert origin[1] = 1933193007
    assert origin[2] = 1668247156
    assert origin[3] = 1919904876
    assert origin[4] = 1701981541
    assert origin[5] = 825454708
    assert origin[6] = 964130678
    assert origin[7] = 779121253
    assert origin[8] = 1986618743
    assert origin[9] = 778264946
    assert origin[10] = 1953655140
    assert origin[11] = 1734684263
    assert origin[12] = 103

    let client_data_json_len = 57
    let client_data_json_rem = 1
    let (client_data_json) = alloc()
    assert client_data_json[0] = 2065855609
    assert client_data_json[1] = 1885676090
    assert client_data_json[2] = 578250082
    assert client_data_json[3] = 1635087464
    assert client_data_json[4] = 1848534885
    assert client_data_json[5] = 1948396578
    assert client_data_json[6] = 1667785068
    assert client_data_json[7] = 1818586727
    assert client_data_json[8] = 1696741922
    assert client_data_json[9] = 813195825
    assert client_data_json[10] = 875848505
    assert client_data_json[11] = 808674100
    assert client_data_json[12] = 1681482288
    assert client_data_json[13] = 1650603364
    assert client_data_json[14] = 909455926
    assert client_data_json[15] = 1647862625
    assert client_data_json[16] = 808661816
    assert client_data_json[17] = 811743282
    assert client_data_json[18] = 1630681138
    assert client_data_json[19] = 942880054
    assert client_data_json[20] = 845560120
    assert client_data_json[21] = 1714841137
    assert client_data_json[22] = 878785074
    assert client_data_json[23] = 959983669
    assert client_data_json[24] = 842282547
    assert client_data_json[25] = 573317743
    assert client_data_json[26] = 1919510377
    assert client_data_json[27] = 1847736866
    assert client_data_json[28] = 1752462448
    assert client_data_json[29] = 1933193007
    assert client_data_json[30] = 1668247156
    assert client_data_json[31] = 1919904876
    assert client_data_json[32] = 1701981543
    assert client_data_json[33] = 1769221492
    assert client_data_json[34] = 1634890341
    assert client_data_json[35] = 1852007725
    assert client_data_json[36] = 1701734189
    assert client_data_json[37] = 825832749
    assert client_data_json[38] = 1668441444
    assert client_data_json[39] = 1701737577
    assert client_data_json[40] = 1634479474
    assert client_data_json[41] = 1701276019
    assert client_data_json[42] = 1953653108
    assert client_data_json[43] = 1768910381
    assert client_data_json[44] = 959919670
    assert client_data_json[45] = 959917680
    assert client_data_json[46] = 1919252073
    assert client_data_json[47] = 1702309475
    assert client_data_json[48] = 1634890866
    assert client_data_json[49] = 1768187749
    assert client_data_json[50] = 778528546
    assert client_data_json[51] = 740451186
    assert client_data_json[52] = 1869837135
    assert client_data_json[53] = 1919510377
    assert client_data_json[54] = 1847736934
    assert client_data_json[55] = 1634497381
    assert client_data_json[56] = 2097152000


    let authenticator_data_len = 10
    let authenticator_data_rem = 1
    let (authenticator_data) = alloc()
    assert authenticator_data[0] = 547978947
    assert authenticator_data[1] = 4176460842
    assert authenticator_data[2] = 3389847498
    assert authenticator_data[3] = 3141667658
    assert authenticator_data[4] = 164671177
    assert authenticator_data[5] = 2421450441
    assert authenticator_data[6] = 2918684036
    assert authenticator_data[7] = 4202036947
    assert authenticator_data[8] = 83886080
    assert authenticator_data[9] = 0

    Webauthn.verify(public_key_pt, r, s,
        type_offset_len, type_offset_rem,
        challenge_offset_len, challenge_offset_rem, challenge_len, challenge_rem, challenge,
        origin_offset_len, origin_offset_rem, origin_len, origin,
        client_data_json_len, client_data_json_rem, client_data_json,
        authenticator_data_len, authenticator_data_rem, authenticator_data
    )

    return ()
end
