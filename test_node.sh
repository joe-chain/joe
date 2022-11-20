# Ensure joe is installed first.

KEY="joe1"
CHAINID="joe-1"
MONIKER="localjoe"
KEYALGO="secp256k1"
KEYRING="test" # export joe_KEYRING="TEST"
LOGLjoeL="info"
TRACE="" # "--trace"

joed config keyring-backend $KEYRING
joed config chain-id $CHAINID
joed config output "json"

command -v jq > /dev/null 2>&1 || { echo >&2 "jq not installed. More info: https://stedolan.github.io/jq/download/"; exit 1; }

airdrop () {
  joed add-genesis-account joe1cnwp99x5m24ucfjkh8csn0nt86x4j0vjz8yxt0 10000000000ujoe --append
  joed add-genesis-account joe1t59elqhcfn0uce9v7kndazwfx87ggv0uq64zfa 10000000000ujoe --append
  joed add-genesis-account joe159edfymz0p8mq85s7nw4fn336fsx0j4cd3nq5x 10000000000ujoe --append
  joed add-genesis-account joe1t59elqhcfn0uce9v7kndazwfx87ggv0uq64zfa 10000000000ujoe --append
  joed add-genesis-account joe1zxzk3jpv5aprnpk0hqwd87uznzcyluzrd0dw2y 10000000000ujoe --append
  joed add-genesis-account joe1d4vmt2ephakayuvjgnwdfjxcvz8phvn6kgceqm 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe137p2qrs3qw00c28679pwu4a76md48q8z3k4qhz 10000000000ujoe --append
  joed add-genesis-account joe1m74zj2duq6aqunjz4syec6wtquxygrkpyjv2gl 10000000000ujoe --append
  joed add-genesis-account joe1daw2sahp0qcqcccv75p39wccj3guv6hkrwmzd7 10000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 10000000000ujoe --append
  joed add-genesis-account joe1cnwp99x5m24ucfjkh8csn0nt86x4j0vjz8yxt0 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1kjusn2sn4950zr449e70zgqhvtlc2rpu9c9ggf 10000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 10000000000ujoe --append
  joed add-genesis-account joe1s4ckh9405q0a3jhkwx9wkf9hsjh66nmupusw47 10000000000ujoe --append
  joed add-genesis-account joe1su8t3rdjy7zev8f8vgvkwzewycgknajn3v9pgc 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1399juvmrxytx5u54970zxkd8hz39669mul4296 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe12c4xfww70fe4h37hncdea8lt80dny8ae4yqgul 10000000000ujoe --append
  joed add-genesis-account joe1aw9z5ajg32gu4qphkrypcyggcrjy6xdju7p0y4 10000000000ujoe --append
  joed add-genesis-account joe158k455lcxhrvvmrfu8m4c6g88fc2qgqqd7gvjg 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe15zz35mvfz5wslq29ftasflgefdanhumc8g47d7 10000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 10000000000ujoe --append
  joed add-genesis-account joe160sa9dv06t8nvaw9gnq4h54dq93l90vvygj8wv 10000000000ujoe --append
  joed add-genesis-account joe1k2syvu9u06xngrn5wnz2lrymtg7t8wg8w7t3p7 10000000000ujoe --append
  joed add-genesis-account joe1xpe0fr4elxw00a0evs3l7kgqrzlv52ah7ndvjz 10000000000ujoe --append
  joed add-genesis-account joe1fxjvxxvk58za4rhw08754hzqtd0v2svtm4qahp 10000000000ujoe --append
  joed add-genesis-account joe12c4xfww70fe4h37hncdea8lt80dny8ae4yqgul 10000000000ujoe --append
  joed add-genesis-account joe158k455lcxhrvvmrfu8m4c6g88fc2qgqqd7gvjg 10000000000ujoe --append
  joed add-genesis-account joe1d4vmt2ephakayuvjgnwdfjxcvz8phvn6kgceqm 10000000000ujoe --append
  joed add-genesis-account joe1eqntnl6tzcj9h86psg4y4h6hh05g2h9nk8xtq8 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1m74zj2duq6aqunjz4syec6wtquxygrkpyjv2gl 10000000000ujoe --append
  joed add-genesis-account joe1ra8nts703udye3ve2hkqlgrsn07u9kwdz6m4ky 10000000000ujoe --append
  joed add-genesis-account joe1eljj8h8wc9me90s740qrl9n6slvn78lg4k0597 10000000000ujoe --append
  joed add-genesis-account joe17fm72hhqfhg7adjqt66lvspngtpds77j05ddqd 10000000000ujoe --append
  joed add-genesis-account joe1yjwzr7u8u64wtdycmgj9lcn98qr29hs7jqtynf 10000000000ujoe --append
  joed add-genesis-account joe1fn0h75ee5rudwfnuc47nrkqes5pftp37wqexlc 10000000000ujoe --append
  joed add-genesis-account joe1pyp3lwlg28zntcpwq87spsjm2sdng32qyr0qd9 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1399juvmrxytx5u54970zxkd8hz39669mul4296 10000000000ujoe --append
  joed add-genesis-account joe1399juvmrxytx5u54970zxkd8hz39669mul4296 10000000000ujoe --append
  joed add-genesis-account joe1v6fnklkj5av596xrv9sucdvcgk7llhrajmgfw2 10000000000ujoe --append
  joed add-genesis-account joe1eqntnl6tzcj9h86psg4y4h6hh05g2h9nk8xtq8 10000000000ujoe --append
  joed add-genesis-account joe10r39fueph9fq7a6lgswu4zdsg8t3gxlq9c66u9 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe13pf47w7f5p37fu0e9urgxqhe8qazq0e5anxtku 10000000000ujoe --append
  joed add-genesis-account joe18k0wh2n2lqxp85h9rrp2qufuyt3etspdz2qf95 10000000000ujoe --append
  joed add-genesis-account joe1f0v5af2nhemuarhjjchu3gq0v0vdmcl0cllqdw 10000000000ujoe --append
  joed add-genesis-account joe1gun9slw3p0wlcta9tplejyq88ztkngpwzjevf5 10000000000ujoe --append
  joed add-genesis-account joe1lgu66ly24wz0x95hkhuzny754hfm9pkue0jgsu 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe15zz35mvfz5wslq29ftasflgefdanhumc8g47d7 10000000000ujoe --append
  joed add-genesis-account joe1n5yr7uxk9eza6m29ew7zvrc0zkd5nvweymnmxr 10000000000ujoe --append
  joed add-genesis-account joe157cey3pkggh8zyun3vmp4ak5wpllwr0s9xj8uz 10000000000ujoe --append
  joed add-genesis-account joe1m74zj2duq6aqunjz4syec6wtquxygrkpyjv2gl 10000000000ujoe --append
  joed add-genesis-account joe158k455lcxhrvvmrfu8m4c6g88fc2qgqqd7gvjg 10000000000ujoe --append
  joed add-genesis-account joe1daw2sahp0qcqcccv75p39wccj3guv6hkrwmzd7 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1fn0h75ee5rudwfnuc47nrkqes5pftp37wqexlc 10000000000ujoe --append
  joed add-genesis-account joe1zd4gg9f07y0u8f23ynf9s3h2e0cfcl7pw2z5zl 10000000000ujoe --append
  joed add-genesis-account joe18e4fdwr23h9j2e6uucvuzsx9gwhys3q0rst3nw 10000000000ujoe --append
  joed add-genesis-account joe1f0v5af2nhemuarhjjchu3gq0v0vdmcl0cllqdw 10000000000ujoe --append
  joed add-genesis-account joe1cp2ufh3ze5zpuphccjg32pde93ctva39ms8ywn 10000000000ujoe --append
  joed add-genesis-account joe193exqqwzdm35987thgyy0sdcyslxenrfv790k0 10000000000ujoe --append
  joed add-genesis-account joe1mhgddg3dyha34p2zhalz9qx0sujvzw67x0wvhx 10000000000ujoe --append
  joed add-genesis-account joe159edfymz0p8mq85s7nw4fn336fsx0j4cd3nq5x 10000000000ujoe --append
  joed add-genesis-account joe1su8t3rdjy7zev8f8vgvkwzewycgknajn3v9pgc 10000000000ujoe --append
  joed add-genesis-account joe159edfymz0p8mq85s7nw4fn336fsx0j4cd3nq5x 10000000000ujoe --append
  joed add-genesis-account joe1v82dpn8quldsxxn0g7n68nadehgcra56apykfc 10000000000ujoe --append
  joed add-genesis-account joe160sa9dv06t8nvaw9gnq4h54dq93l90vvygj8wv 10000000000ujoe --append
  joed add-genesis-account joe1s4ckh9405q0a3jhkwx9wkf9hsjh66nmupusw47 10000000000ujoe --append
  joed add-genesis-account joe1399juvmrxytx5u54970zxkd8hz39669mul4296 10000000000ujoe --append
  joed add-genesis-account joe1suepmkk7s5qjgeugwqas39mrx0ev5p0xkyhjnz 10000000000ujoe --append
  joed add-genesis-account joe1eljj8h8wc9me90s740qrl9n6slvn78lg4k0597 10000000000ujoe --append
  joed add-genesis-account joe1fyarx5m49yx87rzd9m2d98yej5fjq99ddj3l3l 10000000000ujoe --append
  joed add-genesis-account joe1fn0h75ee5rudwfnuc47nrkqes5pftp37wqexlc 10000000000ujoe --append
  joed add-genesis-account joe1v82dpn8quldsxxn0g7n68nadehgcra56apykfc 10000000000ujoe --append
  joed add-genesis-account joe1daw2sahp0qcqcccv75p39wccj3guv6hkrwmzd7 10000000000ujoe --append
  joed add-genesis-account joe1v82dpn8quldsxxn0g7n68nadehgcra56apykfc 10000000000ujoe --append
  joed add-genesis-account joe1aszpxp86gq9qnw8yyyxfkcfcau0870u3r5sqhe 10000000000ujoe --append
  joed add-genesis-account joe1zd4gg9f07y0u8f23ynf9s3h2e0cfcl7pw2z5zl 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1fn0h75ee5rudwfnuc47nrkqes5pftp37wqexlc 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1nxgcnzel7wwf8kn6mqjm3pu4wwwmsqgf24xk90 10000000000ujoe --append
  joed add-genesis-account joe1kjusn2sn4950zr449e70zgqhvtlc2rpu9c9ggf 10000000000ujoe --append
  joed add-genesis-account joe1tkgyd0c0pjdxcu6f7z4h8g65whvdcsqhzl0t84 10000000000ujoe --append
  joed add-genesis-account joe1zfh6ccddln9e4fkwse7fcquvecpnnxykwhqheg 10000000000ujoe --append
  joed add-genesis-account joe1tapjtvaas6h7aludtf59zfq5s8u6y9nj0u4cfv 10000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 10000000000ujoe --append
  joed add-genesis-account joe10r39fueph9fq7a6lgswu4zdsg8t3gxlq9c66u9 10000000000ujoe --append
  joed add-genesis-account joe1p982tvtezcekpgywp7v8jr28l0uc3ssq9suquk 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe193exqqwzdm35987thgyy0sdcyslxenrfv790k0 10000000000ujoe --append
  joed add-genesis-account joe1h9v9er46xw46r3mmptywt2r46snz403pjfmd62 10000000000ujoe --append
  joed add-genesis-account joe1s4ckh9405q0a3jhkwx9wkf9hsjh66nmupusw47 10000000000ujoe --append
  joed add-genesis-account joe1k9ng85nlhlc94865c3c0znygr7h3kre58r25u0 10000000000ujoe --append
  joed add-genesis-account joe17hlfgkzf4n3c8kxzqea7pz7ga0nx30h5wjmcu8 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1zxzk3jpv5aprnpk0hqwd87uznzcyluzrd0dw2y 10000000000ujoe --append
  joed add-genesis-account joe159edfymz0p8mq85s7nw4fn336fsx0j4cd3nq5x 10000000000ujoe --append
  joed add-genesis-account joe1cnwp99x5m24ucfjkh8csn0nt86x4j0vjz8yxt0 10000000000ujoe --append
  joed add-genesis-account joe1su8t3rdjy7zev8f8vgvkwzewycgknajn3v9pgc 10000000000ujoe --append
  joed add-genesis-account joe1u7xwld7jrsj3dh8a7chezj8nj2ac36e8y0wydm 10000000000ujoe --append
  joed add-genesis-account joe199dm0ugv50k4qgcsxjc8p2rertstltxvt9vmra 10000000000ujoe --append
  joed add-genesis-account joe1mhgddg3dyha34p2zhalz9qx0sujvzw67x0wvhx 10000000000ujoe --append
  joed add-genesis-account joe13pf47w7f5p37fu0e9urgxqhe8qazq0e5anxtku 10000000000ujoe --append
  joed add-genesis-account joe1zfh6ccddln9e4fkwse7fcquvecpnnxykwhqheg 10000000000ujoe --append
  joed add-genesis-account joe1fn0h75ee5rudwfnuc47nrkqes5pftp37wqexlc 10000000000ujoe --append
  joed add-genesis-account joe1k2syvu9u06xngrn5wnz2lrymtg7t8wg8w7t3p7 10000000000ujoe --append
  joed add-genesis-account joe1f0v5af2nhemuarhjjchu3gq0v0vdmcl0cllqdw 10000000000ujoe --append
  joed add-genesis-account joe1daw2sahp0qcqcccv75p39wccj3guv6hkrwmzd7 10000000000ujoe --append
  joed add-genesis-account joe1m3d9eqmunr5c6p90s0sgfq5s7k2880sef0jwtv 10000000000ujoe --append
  joed add-genesis-account joe1v82dpn8quldsxxn0g7n68nadehgcra56apykfc 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe137p2qrs3qw00c28679pwu4a76md48q8z3k4qhz 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1zxzk3jpv5aprnpk0hqwd87uznzcyluzrd0dw2y 10000000000ujoe --append
  joed add-genesis-account joe15zzf7wv4hnv3nmsmppgky5smla5n0ff9w924jn 10000000000ujoe --append
  joed add-genesis-account joe1h0qwpv0l2spu7h988dvh92q0v08gkkwsekuxz8 10000000000ujoe --append
  joed add-genesis-account joe1fvnn96kq7xex7t365ltva3msu6ewntxf85zy3a 10000000000ujoe --append
  joed add-genesis-account joe19y8n0f8t6azwftwvdmu9scztunyhdy07ufltvz 10000000000ujoe --append
  joed add-genesis-account joe19y8n0f8t6azwftwvdmu9scztunyhdy07ufltvz 10000000000ujoe --append
  joed add-genesis-account joe13pf47w7f5p37fu0e9urgxqhe8qazq0e5anxtku 10000000000ujoe --append
  joed add-genesis-account joe1nc9w0zatu5sqcj90dvvn3cs30c00d5hajtczs6 10000000000ujoe --append
  joed add-genesis-account joe1cnwp99x5m24ucfjkh8csn0nt86x4j0vjz8yxt0 10000000000ujoe --append
  joed add-genesis-account joe1f0v5af2nhemuarhjjchu3gq0v0vdmcl0cllqdw 10000000000ujoe --append
  joed add-genesis-account joe1aszpxp86gq9qnw8yyyxfkcfcau0870u3r5sqhe 10000000000ujoe --append
  joed add-genesis-account joe1u7xwld7jrsj3dh8a7chezj8nj2ac36e8y0wydm 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1s6yhrhy3lc4c367emt02g9wc7590r2qg8he9t6 10000000000ujoe --append
  joed add-genesis-account joe1eqntnl6tzcj9h86psg4y4h6hh05g2h9nk8xtq8 10000000000ujoe --append
  joed add-genesis-account joe1daw2sahp0qcqcccv75p39wccj3guv6hkrwmzd7 10000000000ujoe --append
  joed add-genesis-account joe1eqntnl6tzcj9h86psg4y4h6hh05g2h9nk8xtq8 10000000000ujoe --append
  joed add-genesis-account joe1cnwp99x5m24ucfjkh8csn0nt86x4j0vjz8yxt0 10000000000ujoe --append
  joed add-genesis-account joe1tapjtvaas6h7aludtf59zfq5s8u6y9nj0u4cfv 10000000000ujoe --append
  joed add-genesis-account joe1jtzmwppdadmyhv6j68dujwghrp8gkr8str53l4 10000000000ujoe --append
  joed add-genesis-account joe14qxxnvute7k8uceqtcljurzl0sv3dt4gtxd8n0 10000000000ujoe --append
  joed add-genesis-account joe1fyarx5m49yx87rzd9m2d98yej5fjq99ddj3l3l 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe10ujj0xx8fcqwsnrfkprjnhvu4g2x230un28zts 10000000000ujoe --append
  joed add-genesis-account joe1kv6uc92k3jtkkt63f43az655qtpgphsd8qd2k4 10000000000ujoe --append
  joed add-genesis-account joe1p982tvtezcekpgywp7v8jr28l0uc3ssq9suquk 10000000000ujoe --append
  joed add-genesis-account joe1cnwp99x5m24ucfjkh8csn0nt86x4j0vjz8yxt0 10000000000ujoe --append
  joed add-genesis-account joe1nxgcnzel7wwf8kn6mqjm3pu4wwwmsqgf24xk90 10000000000ujoe --append
  joed add-genesis-account joe1mhgddg3dyha34p2zhalz9qx0sujvzw67x0wvhx 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe19xma25ppv8ugwtvzpx5n5mde67ngazy47997te 10000000000ujoe --append
  joed add-genesis-account joe10r39fueph9fq7a6lgswu4zdsg8t3gxlq9c66u9 10000000000ujoe --append
  joed add-genesis-account joe137p2qrs3qw00c28679pwu4a76md48q8z3k4qhz 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1qfh0hs2cthjtm8xyfpklcc03fu3f0ke7fhycrl 10000000000ujoe --append
  joed add-genesis-account joe1p982tvtezcekpgywp7v8jr28l0uc3ssq9suquk 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1m74zj2duq6aqunjz4syec6wtquxygrkpyjv2gl 10000000000ujoe --append
  joed add-genesis-account joe1n5yr7uxk9eza6m29ew7zvrc0zkd5nvweymnmxr 10000000000ujoe --append
  joed add-genesis-account joe159edfymz0p8mq85s7nw4fn336fsx0j4cd3nq5x 10000000000ujoe --append
  joed add-genesis-account joe1fn0h75ee5rudwfnuc47nrkqes5pftp37wqexlc 10000000000ujoe --append
  joed add-genesis-account joe1nuspgf00cfv0g0wph2mvkzarn88y76ty4e5tc8 10000000000ujoe --append
  joed add-genesis-account joe1h9v9er46xw46r3mmptywt2r46snz403pjfmd62 10000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe109dxwewpvk00jd54g6l0d8ds2ung3qa6s9z3lv 10000000000ujoe --append
  joed add-genesis-account joe1qfh0hs2cthjtm8xyfpklcc03fu3f0ke7fhycrl 10000000000ujoe --append
  joed add-genesis-account joe10hncce2cs2hlv7l4djw4syhx0sevdz92fk2nvn 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1399juvmrxytx5u54970zxkd8hz39669mul4296 10000000000ujoe --append
  joed add-genesis-account joe1qfh0hs2cthjtm8xyfpklcc03fu3f0ke7fhycrl 10000000000ujoe --append
  joed add-genesis-account joe1h9v9er46xw46r3mmptywt2r46snz403pjfmd62 10000000000ujoe --append
  joed add-genesis-account joe1fyarx5m49yx87rzd9m2d98yej5fjq99ddj3l3l 10000000000ujoe --append
  joed add-genesis-account joe1358cqlmnnpam09r40yg8x8kmxtgdds3kxhgmwn 10000000000ujoe --append
  joed add-genesis-account joe1zxzk3jpv5aprnpk0hqwd87uznzcyluzrd0dw2y 10000000000ujoe --append
  joed add-genesis-account joe1zfh6ccddln9e4fkwse7fcquvecpnnxykwhqheg 10000000000ujoe --append
  joed add-genesis-account joe1h0qwpv0l2spu7h988dvh92q0v08gkkwsekuxz8 10000000000ujoe --append
  joed add-genesis-account joe137p2qrs3qw00c28679pwu4a76md48q8z3k4qhz 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe19xma25ppv8ugwtvzpx5n5mde67ngazy47997te 10000000000ujoe --append
  joed add-genesis-account joe1958ex963n93nhmvcrtlwwtr0c9qmvewhdvuuef 10000000000ujoe --append
  joed add-genesis-account joe13mzcw7ezlgzcgpls7xqxpsg5qqsxvp8jyug6v9 10000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 10000000000ujoe --append
  joed add-genesis-account joe17fm72hhqfhg7adjqt66lvspngtpds77j05ddqd 10000000000ujoe --append
  joed add-genesis-account joe1zxzk3jpv5aprnpk0hqwd87uznzcyluzrd0dw2y 10000000000ujoe --append
  joed add-genesis-account joe1t59elqhcfn0uce9v7kndazwfx87ggv0uq64zfa 10000000000ujoe --append
  joed add-genesis-account joe158k455lcxhrvvmrfu8m4c6g88fc2qgqqd7gvjg 10000000000ujoe --append
  joed add-genesis-account joe15zz35mvfz5wslq29ftasflgefdanhumc8g47d7 10000000000ujoe --append
  joed add-genesis-account joe1h9v9er46xw46r3mmptywt2r46snz403pjfmd62 10000000000ujoe --append
  joed add-genesis-account joe1mw6l2gd2l0jt8phz7yz5l7vyfl4h2qpk9ygm9w 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1t9ldnlu5u0mwcsjmpd0d5yr6tn2kvwru6qsdpf 10000000000ujoe --append
  joed add-genesis-account joe1kjusn2sn4950zr449e70zgqhvtlc2rpu9c9ggf 10000000000ujoe --append
  joed add-genesis-account joe1p982tvtezcekpgywp7v8jr28l0uc3ssq9suquk 10000000000ujoe --append
  joed add-genesis-account joe1vnneuwwg3c8k3t33hlww039ql4wn90spqvcsxs 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1ccfvra0ksy09d6wx559fnrd2msppgdcecnf7cq 10000000000ujoe --append
  joed add-genesis-account joe1v6fnklkj5av596xrv9sucdvcgk7llhrajmgfw2 10000000000ujoe --append
  joed add-genesis-account joe1r2ullmtu3nwxxt3fmt6kyq6zq3k2cqyxhsvwrq 10000000000ujoe --append
  joed add-genesis-account joe1qfh0hs2cthjtm8xyfpklcc03fu3f0ke7fhycrl 10000000000ujoe --append
  joed add-genesis-account joe1m74zj2duq6aqunjz4syec6wtquxygrkpyjv2gl 10000000000ujoe --append
  joed add-genesis-account joe17fm72hhqfhg7adjqt66lvspngtpds77j05ddqd 10000000000ujoe --append
  joed add-genesis-account joe160sa9dv06t8nvaw9gnq4h54dq93l90vvygj8wv 10000000000ujoe --append
  joed add-genesis-account joe16eraqn22mm7n3rqndkw6chc7qk2pdqgksmqjqq 10000000000ujoe --append
  joed add-genesis-account joe1h9v9er46xw46r3mmptywt2r46snz403pjfmd62 10000000000ujoe --append
  joed add-genesis-account joe1cnwp99x5m24ucfjkh8csn0nt86x4j0vjz8yxt0 10000000000ujoe --append
  joed add-genesis-account joe17fm72hhqfhg7adjqt66lvspngtpds77j05ddqd 10000000000ujoe --append
  joed add-genesis-account joe19y8n0f8t6azwftwvdmu9scztunyhdy07ufltvz 10000000000ujoe --append
  joed add-genesis-account joe10hncce2cs2hlv7l4djw4syhx0sevdz92fk2nvn 10000000000ujoe --append
  joed add-genesis-account joe1aszpxp86gq9qnw8yyyxfkcfcau0870u3r5sqhe 10000000000ujoe --append
  joed add-genesis-account joe1h9v9er46xw46r3mmptywt2r46snz403pjfmd62 10000000000ujoe --append
  joed add-genesis-account joe1kjusn2sn4950zr449e70zgqhvtlc2rpu9c9ggf 10000000000ujoe --append
  joed add-genesis-account joe1p982tvtezcekpgywp7v8jr28l0uc3ssq9suquk 10000000000ujoe --append
  joed add-genesis-account joe15zz35mvfz5wslq29ftasflgefdanhumc8g47d7 10000000000ujoe --append
  joed add-genesis-account joe1u3ju3jgkzplnvh2g0azu754n7rcxe58wrph7gj 10000000000ujoe --append
  joed add-genesis-account joe10r39fueph9fq7a6lgswu4zdsg8t3gxlq9c66u9 10000000000ujoe --append
  joed add-genesis-account joe1v82dpn8quldsxxn0g7n68nadehgcra56apykfc 10000000000ujoe --append
  joed add-genesis-account joe13pf47w7f5p37fu0e9urgxqhe8qazq0e5anxtku 10000000000ujoe --append
  joed add-genesis-account joe1kjusn2sn4950zr449e70zgqhvtlc2rpu9c9ggf 10000000000ujoe --append
  joed add-genesis-account joe1f0v5af2nhemuarhjjchu3gq0v0vdmcl0cllqdw 10000000000ujoe --append
  joed add-genesis-account joe15zz35mvfz5wslq29ftasflgefdanhumc8g47d7 10000000000ujoe --append
  joed add-genesis-account joe158k455lcxhrvvmrfu8m4c6g88fc2qgqqd7gvjg 10000000000ujoe --append
  joed add-genesis-account joe1r2ullmtu3nwxxt3fmt6kyq6zq3k2cqyxhsvwrq 10000000000ujoe --append
  joed add-genesis-account joe1n54j9up35trva5fddg29ma5zy605agwlf860w0 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe12c4xfww70fe4h37hncdea8lt80dny8ae4yqgul 10000000000ujoe --append
  joed add-genesis-account joe13pf47w7f5p37fu0e9urgxqhe8qazq0e5anxtku 10000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 10000000000ujoe --append
  joed add-genesis-account joe1s4ckh9405q0a3jhkwx9wkf9hsjh66nmupusw47 10000000000ujoe --append
  joed add-genesis-account joe15zz35mvfz5wslq29ftasflgefdanhumc8g47d7 10000000000ujoe --append
  joed add-genesis-account joe1kjusn2sn4950zr449e70zgqhvtlc2rpu9c9ggf 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe19nmj0pugzugswrtkge2nkklh74lfphvk392xm3 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1mhgddg3dyha34p2zhalz9qx0sujvzw67x0wvhx 10000000000ujoe --append
  joed add-genesis-account joe1xuwl7x8htyl26t7pe3l0x6auj3j9jwd2tzmran 10000000000ujoe --append
  joed add-genesis-account joe1zfh6ccddln9e4fkwse7fcquvecpnnxykwhqheg 10000000000ujoe --append
  joed add-genesis-account joe1p982tvtezcekpgywp7v8jr28l0uc3ssq9suquk 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1snamxl3mua7kzhfr6e2ycm45t2u4phfe994mhl 10000000000ujoe --append
  joed add-genesis-account joe193exqqwzdm35987thgyy0sdcyslxenrfv790k0 10000000000ujoe --append
  joed add-genesis-account joe1x8958xm5el05p4thmg3vajv883z2w434e7hktt 10000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 10000000000ujoe --append
  joed add-genesis-account joe1aszpxp86gq9qnw8yyyxfkcfcau0870u3r5sqhe 10000000000ujoe --append
  joed add-genesis-account joe1d4vmt2ephakayuvjgnwdfjxcvz8phvn6kgceqm 10000000000ujoe --append
  joed add-genesis-account joe1hmda69ykt8rzsrxanrxm2r837edln3pjx26gky 10000000000ujoe --append
  joed add-genesis-account joe1z926ax906k0ycsuckele6x5hh66e2m4mmvpsth 10000000000ujoe --append
  joed add-genesis-account joe1mhgddg3dyha34p2zhalz9qx0sujvzw67x0wvhx 10000000000ujoe --append
  joed add-genesis-account joe159edfymz0p8mq85s7nw4fn336fsx0j4cd3nq5x 10000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 10000000000ujoe --append
  joed add-genesis-account joe1v82dpn8quldsxxn0g7n68nadehgcra56apykfc 10000000000ujoe --append
  joed add-genesis-account joe137p2qrs3qw00c28679pwu4a76md48q8z3k4qhz 10000000000ujoe --append
  joed add-genesis-account joe1tkgyd0c0pjdxcu6f7z4h8g65whvdcsqhzl0t84 10000000000ujoe --append
  joed add-genesis-account joe160sa9dv06t8nvaw9gnq4h54dq93l90vvygj8wv 10000000000ujoe --append
  joed add-genesis-account joe1su8t3rdjy7zev8f8vgvkwzewycgknajn3v9pgc 10000000000ujoe --append
  joed add-genesis-account joe1lvrgkxm0gzvsh2ruve02k3tq3dv3fce3uuq7kz 10000000000ujoe --append
  joed add-genesis-account joe19nmj0pugzugswrtkge2nkklh74lfphvk392xm3 10000000000ujoe --append
  joed add-genesis-account joe1t59elqhcfn0uce9v7kndazwfx87ggv0uq64zfa 10000000000ujoe --append
  joed add-genesis-account joe10flwce9rgdwmecen8v8glfcfll7mphyw6yac37 10000000000ujoe --append
  joed add-genesis-account joe1t59elqhcfn0uce9v7kndazwfx87ggv0uq64zfa 10000000000ujoe --append
  joed add-genesis-account joe17pl2q00c9958l2v63rrzxzvdgxqrwczhrxxlyt 10000000000ujoe --append
  joed add-genesis-account joe19y8n0f8t6azwftwvdmu9scztunyhdy07ufltvz 10000000000ujoe --append
  joed add-genesis-account joe1skvwfwcq96l8506vqf6c2duyqatcawr4dv3pnl 10000000000ujoe --append
  joed add-genesis-account joe1n5yr7uxk9eza6m29ew7zvrc0zkd5nvweymnmxr 10000000000ujoe --append
  joed add-genesis-account joe17fm72hhqfhg7adjqt66lvspngtpds77j05ddqd 10000000000ujoe --append
  joed add-genesis-account joe1fvnn96kq7xex7t365ltva3msu6ewntxf85zy3a 10000000000ujoe --append
  joed add-genesis-account joe10r39fueph9fq7a6lgswu4zdsg8t3gxlq9c66u9 10000000000ujoe --append
  joed add-genesis-account joe13pf47w7f5p37fu0e9urgxqhe8qazq0e5anxtku 10000000000ujoe --append
  joed add-genesis-account joe1m74zj2duq6aqunjz4syec6wtquxygrkpyjv2gl 10000000000ujoe --append
  joed add-genesis-account joe1p982tvtezcekpgywp7v8jr28l0uc3ssq9suquk 10000000000ujoe --append
  joed add-genesis-account joe1n5yr7uxk9eza6m29ew7zvrc0zkd5nvweymnmxr 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1k2syvu9u06xngrn5wnz2lrymtg7t8wg8w7t3p7 10000000000ujoe --append
  joed add-genesis-account joe15zz35mvfz5wslq29ftasflgefdanhumc8g47d7 10000000000ujoe --append
  joed add-genesis-account joe1v82dpn8quldsxxn0g7n68nadehgcra56apykfc 10000000000ujoe --append
  joed add-genesis-account joe193exqqwzdm35987thgyy0sdcyslxenrfv790k0 10000000000ujoe --append
  joed add-genesis-account joe1zxzk3jpv5aprnpk0hqwd87uznzcyluzrd0dw2y 10000000000ujoe --append
  joed add-genesis-account joe1r2ullmtu3nwxxt3fmt6kyq6zq3k2cqyxhsvwrq 10000000000ujoe --append
  joed add-genesis-account joe1s4ckh9405q0a3jhkwx9wkf9hsjh66nmupusw47 10000000000ujoe --append
  joed add-genesis-account joe1s4ckh9405q0a3jhkwx9wkf9hsjh66nmupusw47 10000000000ujoe --append
  joed add-genesis-account joe193exqqwzdm35987thgyy0sdcyslxenrfv790k0 10000000000ujoe --append
  joed add-genesis-account joe1f0v5af2nhemuarhjjchu3gq0v0vdmcl0cllqdw 10000000000ujoe --append
  joed add-genesis-account joe1u7xwld7jrsj3dh8a7chezj8nj2ac36e8y0wydm 10000000000ujoe --append
  joed add-genesis-account joe1zfh6ccddln9e4fkwse7fcquvecpnnxykwhqheg 10000000000ujoe --append
  joed add-genesis-account joe1p982tvtezcekpgywp7v8jr28l0uc3ssq9suquk 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe19y8n0f8t6azwftwvdmu9scztunyhdy07ufltvz 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 10000000000ujoe --append
  joed add-genesis-account joe1k9ng85nlhlc94865c3c0znygr7h3kre58r25u0 10000000000ujoe --append
  joed add-genesis-account joe1auw5csq749tcuw9cy94ldpyhwmvm7qagv27u7j 10000000000ujoe --append
  joed add-genesis-account joe10flwce9rgdwmecen8v8glfcfll7mphyw6yac37 10000000000ujoe --append
  joed add-genesis-account joe1lgu66ly24wz0x95hkhuzny754hfm9pkue0jgsu 10000000000ujoe --append
  joed add-genesis-account joe1n8esahe5623r63ffmtu2ytgwtf8lvfay8uvkdz 10000000000ujoe --append
  joed add-genesis-account joe19xma25ppv8ugwtvzpx5n5mde67ngazy47997te 10000000000ujoe --append
  joed add-genesis-account joe14vgvwqadrluenyepcn7lhv6e8lq507raul04xh 10000000000ujoe --append
  joed add-genesis-account joe1su8t3rdjy7zev8f8vgvkwzewycgknajn3v9pgc 10000000000ujoe --append
  joed add-genesis-account joe1zxzk3jpv5aprnpk0hqwd87uznzcyluzrd0dw2y 10000000000ujoe --append
  joed add-genesis-account joe19xma25ppv8ugwtvzpx5n5mde67ngazy47997te 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1fn0h75ee5rudwfnuc47nrkqes5pftp37wqexlc 10000000000ujoe --append
  joed add-genesis-account joe159edfymz0p8mq85s7nw4fn336fsx0j4cd3nq5x 10000000000ujoe --append
  joed add-genesis-account joe1hhayvgvz3qqw40r7tg09wan8932wuw6egyggjt 10000000000ujoe --append
  joed add-genesis-account joe1su8t3rdjy7zev8f8vgvkwzewycgknajn3v9pgc 10000000000ujoe --append
  joed add-genesis-account joe137p2qrs3qw00c28679pwu4a76md48q8z3k4qhz 10000000000ujoe --append
  joed add-genesis-account joe19y8n0f8t6azwftwvdmu9scztunyhdy07ufltvz 10000000000ujoe --append
  joed add-genesis-account joe1399juvmrxytx5u54970zxkd8hz39669mul4296 10000000000ujoe --append
  joed add-genesis-account joe1qfh0hs2cthjtm8xyfpklcc03fu3f0ke7fhycrl 10000000000ujoe --append
  joed add-genesis-account joe1v6fnklkj5av596xrv9sucdvcgk7llhrajmgfw2 10000000000ujoe --append
  joed add-genesis-account joe17fm72hhqfhg7adjqt66lvspngtpds77j05ddqd 10000000000ujoe --append
  joed add-genesis-account joe1m3567wl3jl0dwvm5m3et07hwmg83vvn86vx2wc 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1snamxl3mua7kzhfr6e2ycm45t2u4phfe994mhl 10000000000ujoe --append
  joed add-genesis-account joe10r39fueph9fq7a6lgswu4zdsg8t3gxlq9c66u9 10000000000ujoe --append
  joed add-genesis-account joe158k455lcxhrvvmrfu8m4c6g88fc2qgqqd7gvjg 10000000000ujoe --append
  joed add-genesis-account joe1fn0h75ee5rudwfnuc47nrkqes5pftp37wqexlc 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe160sa9dv06t8nvaw9gnq4h54dq93l90vvygj8wv 10000000000ujoe --append
  joed add-genesis-account joe1su8t3rdjy7zev8f8vgvkwzewycgknajn3v9pgc 10000000000ujoe --append
  joed add-genesis-account joe13pf47w7f5p37fu0e9urgxqhe8qazq0e5anxtku 10000000000ujoe --append
  joed add-genesis-account joe10r39fueph9fq7a6lgswu4zdsg8t3gxlq9c66u9 10000000000ujoe --append
  joed add-genesis-account joe1ftkdaf64j80fvdxc93n489djm0hd3830mcm4tw 10000000000ujoe --append
  joed add-genesis-account joe1fn0h75ee5rudwfnuc47nrkqes5pftp37wqexlc 10000000000ujoe --append
  joed add-genesis-account joe1kjusn2sn4950zr449e70zgqhvtlc2rpu9c9ggf 10000000000ujoe --append
  joed add-genesis-account joe1fvnn96kq7xex7t365ltva3msu6ewntxf85zy3a 10000000000ujoe --append
  joed add-genesis-account joe1n8esahe5623r63ffmtu2ytgwtf8lvfay8uvkdz 10000000000ujoe --append
  joed add-genesis-account joe1mhgddg3dyha34p2zhalz9qx0sujvzw67x0wvhx 10000000000ujoe --append
  joed add-genesis-account joe1358cqlmnnpam09r40yg8x8kmxtgdds3kxhgmwn 10000000000ujoe --append
  joed add-genesis-account joe17fm72hhqfhg7adjqt66lvspngtpds77j05ddqd 10000000000ujoe --append
  joed add-genesis-account joe159edfymz0p8mq85s7nw4fn336fsx0j4cd3nq5x 10000000000ujoe --append
  joed add-genesis-account joe10r39fueph9fq7a6lgswu4zdsg8t3gxlq9c66u9 10000000000ujoe --append
  joed add-genesis-account joe193exqqwzdm35987thgyy0sdcyslxenrfv790k0 10000000000ujoe --append
  joed add-genesis-account joe19nmj0pugzugswrtkge2nkklh74lfphvk392xm3 10000000000ujoe --append
  joed add-genesis-account joe1su8t3rdjy7zev8f8vgvkwzewycgknajn3v9pgc 10000000000ujoe --append
  joed add-genesis-account joe14qxxnvute7k8uceqtcljurzl0sv3dt4gtxd8n0 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe160sa9dv06t8nvaw9gnq4h54dq93l90vvygj8wv 10000000000ujoe --append
  joed add-genesis-account joe1cnwp99x5m24ucfjkh8csn0nt86x4j0vjz8yxt0 10000000000ujoe --append
  joed add-genesis-account joe1aszpxp86gq9qnw8yyyxfkcfcau0870u3r5sqhe 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1tapjtvaas6h7aludtf59zfq5s8u6y9nj0u4cfv 10000000000ujoe --append
  joed add-genesis-account joe1md9zaw7gpnrfl2swql6hjvgttjuf6cvk27tvls 10000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 10000000000ujoe --append
  joed add-genesis-account joe1m74zj2duq6aqunjz4syec6wtquxygrkpyjv2gl 10000000000ujoe --append
  joed add-genesis-account joe1zfh6ccddln9e4fkwse7fcquvecpnnxykwhqheg 10000000000ujoe --append
  joed add-genesis-account joe137p2qrs3qw00c28679pwu4a76md48q8z3k4qhz 10000000000ujoe --append
  joed add-genesis-account joe1pyp3lwlg28zntcpwq87spsjm2sdng32qyr0qd9 10000000000ujoe --append
  joed add-genesis-account joe1lvrgkxm0gzvsh2ruve02k3tq3dv3fce3uuq7kz 10000000000ujoe --append
  joed add-genesis-account joe193exqqwzdm35987thgyy0sdcyslxenrfv790k0 10000000000ujoe --append
  joed add-genesis-account joe1s4ckh9405q0a3jhkwx9wkf9hsjh66nmupusw47 10000000000ujoe --append
  joed add-genesis-account joe1hmda69ykt8rzsrxanrxm2r837edln3pjx26gky 10000000000ujoe --append
  joed add-genesis-account joe1e5zy0fer7t7wdx9uxlyclej6lqlmts9hss9fvh 10000000000ujoe --append
  joed add-genesis-account joe1hhayvgvz3qqw40r7tg09wan8932wuw6egyggjt 10000000000ujoe --append
  joed add-genesis-account joe1n54j9up35trva5fddg29ma5zy605agwlf860w0 10000000000ujoe --append
  joed add-genesis-account joe10r39fueph9fq7a6lgswu4zdsg8t3gxlq9c66u9 10000000000ujoe --append
  joed add-genesis-account joe1eywufmvkl4805stahfkdt0qetc3r0zvham5yu7 10000000000ujoe --append
  joed add-genesis-account joe1aszpxp86gq9qnw8yyyxfkcfcau0870u3r5sqhe 10000000000ujoe --append
  joed add-genesis-account joe15zz35mvfz5wslq29ftasflgefdanhumc8g47d7 10000000000ujoe --append
  joed add-genesis-account joe1fvnn96kq7xex7t365ltva3msu6ewntxf85zy3a 10000000000ujoe --append
  joed add-genesis-account joe1n4a7szqm4gu0xegntwy245fjq8tlfh4vufnvza 10000000000ujoe --append
  joed add-genesis-account joe1v6fnklkj5av596xrv9sucdvcgk7llhrajmgfw2 10000000000ujoe --append
  joed add-genesis-account joe1zxzk3jpv5aprnpk0hqwd87uznzcyluzrd0dw2y 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1s4ckh9405q0a3jhkwx9wkf9hsjh66nmupusw47 10000000000ujoe --append
  joed add-genesis-account joe1vv2nm8tvpyx88r07hx5x4zyctpkztp6yerft4k 10000000000ujoe --append
  joed add-genesis-account joe19y8n0f8t6azwftwvdmu9scztunyhdy07ufltvz 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1cnwp99x5m24ucfjkh8csn0nt86x4j0vjz8yxt0 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1eqemvtjtfx43snexxya8lav4h3fpxzsrtleu9l 10000000000ujoe --append
  joed add-genesis-account joe17fm72hhqfhg7adjqt66lvspngtpds77j05ddqd 10000000000ujoe --append
  joed add-genesis-account joe1daw2sahp0qcqcccv75p39wccj3guv6hkrwmzd7 10000000000ujoe --append
  joed add-genesis-account joe1fyarx5m49yx87rzd9m2d98yej5fjq99ddj3l3l 10000000000ujoe --append
  joed add-genesis-account joe1fyarx5m49yx87rzd9m2d98yej5fjq99ddj3l3l 10000000000ujoe --append
  joed add-genesis-account joe1h9v9er46xw46r3mmptywt2r46snz403pjfmd62 10000000000ujoe --append
  joed add-genesis-account joe1ex58ltuvruyew8849atkwqxr22nr8jww466yh6 10000000000ujoe --append
  joed add-genesis-account joe10r39fueph9fq7a6lgswu4zdsg8t3gxlq9c66u9 10000000000ujoe --append
  joed add-genesis-account joe1v6fnklkj5av596xrv9sucdvcgk7llhrajmgfw2 10000000000ujoe --append
  joed add-genesis-account joe1eqntnl6tzcj9h86psg4y4h6hh05g2h9nk8xtq8 10000000000ujoe --append
  joed add-genesis-account joe13pf47w7f5p37fu0e9urgxqhe8qazq0e5anxtku 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1tapjtvaas6h7aludtf59zfq5s8u6y9nj0u4cfv 10000000000ujoe --append
  joed add-genesis-account joe1p982tvtezcekpgywp7v8jr28l0uc3ssq9suquk 10000000000ujoe --append
  joed add-genesis-account joe19nmj0pugzugswrtkge2nkklh74lfphvk392xm3 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1h9v9er46xw46r3mmptywt2r46snz403pjfmd62 10000000000ujoe --append
  joed add-genesis-account joe1lgu66ly24wz0x95hkhuzny754hfm9pkue0jgsu 10000000000ujoe --append
  joed add-genesis-account joe1h9v9er46xw46r3mmptywt2r46snz403pjfmd62 10000000000ujoe --append
  joed add-genesis-account joe1mhgddg3dyha34p2zhalz9qx0sujvzw67x0wvhx 10000000000ujoe --append
  joed add-genesis-account joe10hncce2cs2hlv7l4djw4syhx0sevdz92fk2nvn 10000000000ujoe --append
  joed add-genesis-account joe1fvnn96kq7xex7t365ltva3msu6ewntxf85zy3a 10000000000ujoe --append
  joed add-genesis-account joe17fm72hhqfhg7adjqt66lvspngtpds77j05ddqd 10000000000ujoe --append
  joed add-genesis-account joe1daw2sahp0qcqcccv75p39wccj3guv6hkrwmzd7 10000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 10000000000ujoe --append
  joed add-genesis-account joe1zfh6ccddln9e4fkwse7fcquvecpnnxykwhqheg 10000000000ujoe --append
  joed add-genesis-account joe1r2ullmtu3nwxxt3fmt6kyq6zq3k2cqyxhsvwrq 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1399juvmrxytx5u54970zxkd8hz39669mul4296 10000000000ujoe --append
  joed add-genesis-account joe1fyarx5m49yx87rzd9m2d98yej5fjq99ddj3l3l 10000000000ujoe --append
  joed add-genesis-account joe13pf47w7f5p37fu0e9urgxqhe8qazq0e5anxtku 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe15zz35mvfz5wslq29ftasflgefdanhumc8g47d7 10000000000ujoe --append
  joed add-genesis-account joe1daw2sahp0qcqcccv75p39wccj3guv6hkrwmzd7 10000000000ujoe --append
  joed add-genesis-account joe1n8esahe5623r63ffmtu2ytgwtf8lvfay8uvkdz 10000000000ujoe --append
  joed add-genesis-account joe17nun6cg7a5xtu9fz2p8scxr7u9jmrf5v9q4q86 10000000000ujoe --append
  joed add-genesis-account joe1qfh0hs2cthjtm8xyfpklcc03fu3f0ke7fhycrl 10000000000ujoe --append
  joed add-genesis-account joe10r39fueph9fq7a6lgswu4zdsg8t3gxlq9c66u9 10000000000ujoe --append
  joed add-genesis-account joe1fyarx5m49yx87rzd9m2d98yej5fjq99ddj3l3l 10000000000ujoe --append
  joed add-genesis-account joe1hmda69ykt8rzsrxanrxm2r837edln3pjx26gky 10000000000ujoe --append
  joed add-genesis-account joe1d4vmt2ephakayuvjgnwdfjxcvz8phvn6kgceqm 10000000000ujoe --append
  joed add-genesis-account joe13pf47w7f5p37fu0e9urgxqhe8qazq0e5anxtku 10000000000ujoe --append
  joed add-genesis-account joe1cxyjsjj7qjkh9gearccn563hwujrqdewr4pwvn 10000000000ujoe --append
  joed add-genesis-account joe158k455lcxhrvvmrfu8m4c6g88fc2qgqqd7gvjg 10000000000ujoe --append
  joed add-genesis-account joe1t59elqhcfn0uce9v7kndazwfx87ggv0uq64zfa 10000000000ujoe --append
  joed add-genesis-account joe1cv6sc24umsu57kl2x7d0wwks0w44zsc3d96298 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1zfh6ccddln9e4fkwse7fcquvecpnnxykwhqheg 10000000000ujoe --append
  joed add-genesis-account joe14qxxnvute7k8uceqtcljurzl0sv3dt4gtxd8n0 10000000000ujoe --append
  joed add-genesis-account joe1qfh0hs2cthjtm8xyfpklcc03fu3f0ke7fhycrl 10000000000ujoe --append
  joed add-genesis-account joe1fn0h75ee5rudwfnuc47nrkqes5pftp37wqexlc 10000000000ujoe --append
  joed add-genesis-account joe1tapjtvaas6h7aludtf59zfq5s8u6y9nj0u4cfv 10000000000ujoe --append
  joed add-genesis-account joe1daw2sahp0qcqcccv75p39wccj3guv6hkrwmzd7 10000000000ujoe --append
  joed add-genesis-account joe1399juvmrxytx5u54970zxkd8hz39669mul4296 10000000000ujoe --append
  joed add-genesis-account joe1mhgddg3dyha34p2zhalz9qx0sujvzw67x0wvhx 10000000000ujoe --append
  joed add-genesis-account joe1qfh0hs2cthjtm8xyfpklcc03fu3f0ke7fhycrl 10000000000ujoe --append
  joed add-genesis-account joe1399juvmrxytx5u54970zxkd8hz39669mul4296 10000000000ujoe --append
  joed add-genesis-account joe199dm0ugv50k4qgcsxjc8p2rertstltxvt9vmra 10000000000ujoe --append
  joed add-genesis-account joe1hmda69ykt8rzsrxanrxm2r837edln3pjx26gky 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1tapjtvaas6h7aludtf59zfq5s8u6y9nj0u4cfv 10000000000ujoe --append
  joed add-genesis-account joe193exqqwzdm35987thgyy0sdcyslxenrfv790k0 10000000000ujoe --append
  joed add-genesis-account joe1v82dpn8quldsxxn0g7n68nadehgcra56apykfc 10000000000ujoe --append
  joed add-genesis-account joe1zd4gg9f07y0u8f23ynf9s3h2e0cfcl7pw2z5zl 10000000000ujoe --append
  joed add-genesis-account joe1nxgcnzel7wwf8kn6mqjm3pu4wwwmsqgf24xk90 10000000000ujoe --append
  joed add-genesis-account joe160sa9dv06t8nvaw9gnq4h54dq93l90vvygj8wv 10000000000ujoe --append
  joed add-genesis-account joe19nmj0pugzugswrtkge2nkklh74lfphvk392xm3 10000000000ujoe --append
  joed add-genesis-account joe1fyarx5m49yx87rzd9m2d98yej5fjq99ddj3l3l 10000000000ujoe --append
  joed add-genesis-account joe1t59elqhcfn0uce9v7kndazwfx87ggv0uq64zfa 10000000000ujoe --append
  joed add-genesis-account joe1zd4gg9f07y0u8f23ynf9s3h2e0cfcl7pw2z5zl 10000000000ujoe --append
  joed add-genesis-account joe1f0v5af2nhemuarhjjchu3gq0v0vdmcl0cllqdw 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1zd4gg9f07y0u8f23ynf9s3h2e0cfcl7pw2z5zl 10000000000ujoe --append
  joed add-genesis-account joe1zd4gg9f07y0u8f23ynf9s3h2e0cfcl7pw2z5zl 10000000000ujoe --append
  joed add-genesis-account joe158k455lcxhrvvmrfu8m4c6g88fc2qgqqd7gvjg 10000000000ujoe --append
  joed add-genesis-account joe1kjusn2sn4950zr449e70zgqhvtlc2rpu9c9ggf 10000000000ujoe --append
  joed add-genesis-account joe1mhgddg3dyha34p2zhalz9qx0sujvzw67x0wvhx 10000000000ujoe --append
  joed add-genesis-account joe159edfymz0p8mq85s7nw4fn336fsx0j4cd3nq5x 10000000000ujoe --append
  joed add-genesis-account joe1n5yr7uxk9eza6m29ew7zvrc0zkd5nvweymnmxr 10000000000ujoe --append
  joed add-genesis-account joe1p80cpg464u48k7hr3a6myeu4s3ngr3t8cxvp5n 10000000000ujoe --append
  joed add-genesis-account joe1h9v9er46xw46r3mmptywt2r46snz403pjfmd62 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1t59elqhcfn0uce9v7kndazwfx87ggv0uq64zfa 10000000000ujoe --append
  joed add-genesis-account joe1zd4gg9f07y0u8f23ynf9s3h2e0cfcl7pw2z5zl 10000000000ujoe --append
  joed add-genesis-account joe19zz54hh3gdylmavz9x0zjt3yppfscrhe0cuyz8 10000000000ujoe --append
  joed add-genesis-account joe1fvnn96kq7xex7t365ltva3msu6ewntxf85zy3a 10000000000ujoe --append
  joed add-genesis-account joe19y8n0f8t6azwftwvdmu9scztunyhdy07ufltvz 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe15zz35mvfz5wslq29ftasflgefdanhumc8g47d7 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1wvwv6n724yq5xs9z2lk03mspwruyxjyq3mh7yz 10000000000ujoe --append
  joed add-genesis-account joe1qaphxxcc6gg0023cnv6n05yrkkns60keqe8qkd 10000000000ujoe --append
  joed add-genesis-account joe1399juvmrxytx5u54970zxkd8hz39669mul4296 10000000000ujoe --append
  joed add-genesis-account joe1ar6qlg80p0l3zwfaq2qqv8h4gp5sxpg37u450x 10000000000ujoe --append
  joed add-genesis-account joe1v82dpn8quldsxxn0g7n68nadehgcra56apykfc 10000000000ujoe --append
  joed add-genesis-account joe1zxzk3jpv5aprnpk0hqwd87uznzcyluzrd0dw2y 10000000000ujoe --append
  joed add-genesis-account joe1fvnn96kq7xex7t365ltva3msu6ewntxf85zy3a 10000000000ujoe --append
  joed add-genesis-account joe159edfymz0p8mq85s7nw4fn336fsx0j4cd3nq5x 10000000000ujoe --append
  joed add-genesis-account joe1hmda69ykt8rzsrxanrxm2r837edln3pjx26gky 10000000000ujoe --append
  joed add-genesis-account joe1snamxl3mua7kzhfr6e2ycm45t2u4phfe994mhl 10000000000ujoe --append
  joed add-genesis-account joe1tapjtvaas6h7aludtf59zfq5s8u6y9nj0u4cfv 10000000000ujoe --append
  joed add-genesis-account joe1n8esahe5623r63ffmtu2ytgwtf8lvfay8uvkdz 10000000000ujoe --append
  joed add-genesis-account joe1jtzmwppdadmyhv6j68dujwghrp8gkr8str53l4 10000000000ujoe --append
  joed add-genesis-account joe1s4ckh9405q0a3jhkwx9wkf9hsjh66nmupusw47 10000000000ujoe --append
  joed add-genesis-account joe1h0qwpv0l2spu7h988dvh92q0v08gkkwsekuxz8 10000000000ujoe --append
  joed add-genesis-account joe1zd4gg9f07y0u8f23ynf9s3h2e0cfcl7pw2z5zl 10000000000ujoe --append
  joed add-genesis-account joe14qxxnvute7k8uceqtcljurzl0sv3dt4gtxd8n0 10000000000ujoe --append
  joed add-genesis-account joe1zxzk3jpv5aprnpk0hqwd87uznzcyluzrd0dw2y 10000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 10000000000ujoe --append
  joed add-genesis-account joe1zfh6ccddln9e4fkwse7fcquvecpnnxykwhqheg 10000000000ujoe --append
  joed add-genesis-account joe160sa9dv06t8nvaw9gnq4h54dq93l90vvygj8wv 10000000000ujoe --append
  joed add-genesis-account joe1zd4gg9f07y0u8f23ynf9s3h2e0cfcl7pw2z5zl 10000000000ujoe --append
  joed add-genesis-account joe1cv6sc24umsu57kl2x7d0wwks0w44zsc3d96298 10000000000ujoe --append
  joed add-genesis-account joe1kjusn2sn4950zr449e70zgqhvtlc2rpu9c9ggf 10000000000ujoe --append
  joed add-genesis-account joe19xma25ppv8ugwtvzpx5n5mde67ngazy47997te 10000000000ujoe --append
  joed add-genesis-account joe1aszpxp86gq9qnw8yyyxfkcfcau0870u3r5sqhe 10000000000ujoe --append
  joed add-genesis-account joe1s4ckh9405q0a3jhkwx9wkf9hsjh66nmupusw47 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1kjusn2sn4950zr449e70zgqhvtlc2rpu9c9ggf 10000000000ujoe --append
  joed add-genesis-account joe160sa9dv06t8nvaw9gnq4h54dq93l90vvygj8wv 10000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 10000000000ujoe --append
  joed add-genesis-account joe1fyarx5m49yx87rzd9m2d98yej5fjq99ddj3l3l 10000000000ujoe --append
  joed add-genesis-account joe1pyp3lwlg28zntcpwq87spsjm2sdng32qyr0qd9 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1q3scuwfpapydfzrkfssxuwccspewlp6s4mcu0k 10000000000ujoe --append
  joed add-genesis-account joe1gun9slw3p0wlcta9tplejyq88ztkngpwzjevf5 10000000000ujoe --append
  joed add-genesis-account joe1daw2sahp0qcqcccv75p39wccj3guv6hkrwmzd7 10000000000ujoe --append
  joed add-genesis-account joe1tapjtvaas6h7aludtf59zfq5s8u6y9nj0u4cfv 10000000000ujoe --append
  joed add-genesis-account joe1v82dpn8quldsxxn0g7n68nadehgcra56apykfc 10000000000ujoe --append
  joed add-genesis-account joe1u7x9rf8eq9z96u54fepu625r22gtkan2fkya5a 10000000000ujoe --append
  joed add-genesis-account joe19y8n0f8t6azwftwvdmu9scztunyhdy07ufltvz 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe10r39fueph9fq7a6lgswu4zdsg8t3gxlq9c66u9 10000000000ujoe --append
  joed add-genesis-account joe19y8n0f8t6azwftwvdmu9scztunyhdy07ufltvz 10000000000ujoe --append
  joed add-genesis-account joe1c0sm54k3wln0adsrrxhlge9dje2lrer3mhkj7t 10000000000ujoe --append
  joed add-genesis-account joe1fyarx5m49yx87rzd9m2d98yej5fjq99ddj3l3l 10000000000ujoe --append
  joed add-genesis-account joe17fm72hhqfhg7adjqt66lvspngtpds77j05ddqd 10000000000ujoe --append
  joed add-genesis-account joe1zd4gg9f07y0u8f23ynf9s3h2e0cfcl7pw2z5zl 10000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 10000000000ujoe --append
  joed add-genesis-account joe1fvnn96kq7xex7t365ltva3msu6ewntxf85zy3a 10000000000ujoe --append
  joed add-genesis-account joe160sa9dv06t8nvaw9gnq4h54dq93l90vvygj8wv 10000000000ujoe --append
  joed add-genesis-account joe1u3ju3jgkzplnvh2g0azu754n7rcxe58wrph7gj 10000000000ujoe --append
  joed add-genesis-account joe1e5zy0fer7t7wdx9uxlyclej6lqlmts9hss9fvh 10000000000ujoe --append
  joed add-genesis-account joe1qfh0hs2cthjtm8xyfpklcc03fu3f0ke7fhycrl 10000000000ujoe --append
  joed add-genesis-account joe1ex58ltuvruyew8849atkwqxr22nr8jww466yh6 10000000000ujoe --append
  joed add-genesis-account joe1n5yr7uxk9eza6m29ew7zvrc0zkd5nvweymnmxr 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1958ex963n93nhmvcrtlwwtr0c9qmvewhdvuuef 10000000000ujoe --append
  joed add-genesis-account joe1mhgddg3dyha34p2zhalz9qx0sujvzw67x0wvhx 10000000000ujoe --append
  joed add-genesis-account joe1zfh6ccddln9e4fkwse7fcquvecpnnxykwhqheg 10000000000ujoe --append
  joed add-genesis-account joe18e4fdwr23h9j2e6uucvuzsx9gwhys3q0rst3nw 10000000000ujoe --append
  joed add-genesis-account joe1qaphxxcc6gg0023cnv6n05yrkkns60keqe8qkd 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1aszpxp86gq9qnw8yyyxfkcfcau0870u3r5sqhe 10000000000ujoe --append
  joed add-genesis-account joe1fvnn96kq7xex7t365ltva3msu6ewntxf85zy3a 10000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 10000000000ujoe --append
  joed add-genesis-account joe1p982tvtezcekpgywp7v8jr28l0uc3ssq9suquk 10000000000ujoe --append
  joed add-genesis-account joe19nmj0pugzugswrtkge2nkklh74lfphvk392xm3 10000000000ujoe --append
  joed add-genesis-account joe1mzkwyvyxg4jtczr6s7mjktfrr7ksfwmxdpjw8z 10000000000ujoe --append
  joed add-genesis-account joe1v6fnklkj5av596xrv9sucdvcgk7llhrajmgfw2 10000000000ujoe --append
  joed add-genesis-account joe1ex58ltuvruyew8849atkwqxr22nr8jww466yh6 10000000000ujoe --append
}

from_scratch () {

  make install

  # remove existing daemon
  rm -rf ~/.joed/* 
  
  # joe1hj5fveer5cjtn4wd6wstzugjfdxzl0xp0cyvu4
  echo "decorate bright ozone fork gallery riot bus exhaust worth way bone indoor calm squirrel merry zero scheme cotton until shop any excess stage laundry" | joed keys add $KEY --keyring-backend $KEYRING --algo $KEYALGO --recover
  # Set moniker and chain-id for Craft
  joed init $MONIKER --chain-id $CHAINID 

  # Function updates the config based on a jq argument as a string
  update_test_genesis () {
    # update_test_genesis '.consensus_params["block"]["max_gas"]="100000000"'
    cat $HOME/.joed/config/genesis.json | jq "$1" > $HOME/.joed/config/tmp_genesis.json && mv $HOME/.joed/config/tmp_genesis.json $HOME/.joed/config/genesis.json
  }

  # Set gas limit in genesis
  update_test_genesis '.consensus_params["block"]["max_gas"]="100000000"'
  update_test_genesis '.app_state["gov"]["voting_params"]["voting_period"]="21600s"' # 6 hours
  
  update_test_genesis '.app_state["staking"]["params"]["bond_denom"]="ujoe"'  
  update_test_genesis '.app_state["staking"]["params"]["min_commission_rate"]="0.040000000000000000"' # 3%   
  update_test_genesis '.app_state["staking"]["params"]["unbonding_time"]="57600s"' # 16 hours    
  update_test_genesis '.app_state["staking"]["params"]["max_validators"]="16"' # 16 hours    

  update_test_genesis '.app_state["mint"]["minter"]["inflation"]="0.690000000000000000"' # 69% inflation  

  update_test_genesis '.app_state["slashing"]["params"]["signed_blocks_window"]="42000"'
  update_test_genesis '.app_state["slashing"]["params"]["min_signed_per_window"]="0.690000000000000000"'
  update_test_genesis '.app_state["slashing"]["params"]["downtime_jail_duration"]="420s"'
  update_test_genesis '.app_state["slashing"]["params"]["slash_fraction_double_sign"]="0.149870000000000000"'
  update_test_genesis '.app_state["slashing"]["params"]["slash_fraction_downtime"]="0.012300000000000000"'
  
  update_test_genesis '.app_state["mint"]["params"]["mint_denom"]="ujoe"'  
  update_test_genesis '.app_state["gov"]["deposit_params"]["min_deposit"]=[{"denom": "ujoe","amount": "100"}]' # 1 joe right now
  update_test_genesis '.app_state["crisis"]["constant_fee"]={"denom": "ujoe","amount": "1000"}'  

  # same as inqlusions
  update_test_genesis '.app_state["staking"]["params"]["exemption_factor"]="10.000000000000000000"'  

  update_test_genesis '.app_state["tokenfactory"]["params"]["denom_creation_fee"]=[{"denom": "ujoe","amount": "1000000"}]'  

  # Allocate genesis accounts
  # 10 joe (1 of which is used for validator)
  joed add-genesis-account $KEY 10000000ujoe --keyring-backend $KEYRING
  airdrop

  # creates
  joed gentx $KEY 1000000ujoe --keyring-backend $KEYRING --chain-id $CHAINID


  # Collect genesis tx
  joed collect-gentxs

  # Run this to ensure joerything worked and that the genesis file is setup correctly
  joed validate-genesis
}

# from_scratch

# Opens the RPC endpoint to outside connections
sed -i '/laddr = "tcp:\/\/127.0.0.1:26657"/c\laddr = "tcp:\/\/0.0.0.0:26657"' ~/.joed/config/config.toml
sed -i 's/cors_allowed_origins = \[\]/cors_allowed_origins = \["\*"\]/g' ~/.joed/config/config.toml

# # Start the node (remove the --pruning=nothing flag if historical queries are not needed)
joed start --pruning=nothing  --minimum-gas-prices=0ujoe #--mode validator     