# Ensure joe is installed first.

KEY="validator"
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
  joed add-genesis-account joe10r39fueph9fq7a6lgswu4zdsg8t3gxlq9c66u9 10000000000000ujoe --append # for the JOE DAO (reece)
  joed add-genesis-account joe1q3scuwfpapydfzrkfssxuwccspewlp6s4mcu0k 250000000000ujoe --append # timmy joeaddress

  joed add-genesis-account joe1s0xssdta4f6jys52pt44yw306vs0skrf67pas7 10000000000ujoe --append # pbcups
  joed add-genesis-account joe1dy2t6syrsn9fsk3arvhw9nm3fx7g5cvxa2dx2l 10000000000ujoe --append # luncdao
  joed add-genesis-account joe1z8u80j9xcye4l2vumcq85y85h68ymjcw7nvnmy 10000000000ujoe --append # pupjoes
  # Chandra Station?

  # airdrop 1 - 1k joe per NFT joe
  joed add-genesis-account joe1cnwp99x5m24ucfjkh8csn0nt86x4j0vjz8yxt0 9000000000ujoe --append
  joed add-genesis-account joe1t59elqhcfn0uce9v7kndazwfx87ggv0uq64zfa 8000000000ujoe --append
  joed add-genesis-account joe159edfymz0p8mq85s7nw4fn336fsx0j4cd3nq5x 10000000000ujoe --append
  joed add-genesis-account joe1zxzk3jpv5aprnpk0hqwd87uznzcyluzrd0dw2y 10000000000ujoe --append
  joed add-genesis-account joe1d4vmt2ephakayuvjgnwdfjxcvz8phvn6kgceqm 4000000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 39000000000ujoe --append
  joed add-genesis-account joe137p2qrs3qw00c28679pwu4a76md48q8z3k4qhz 7000000000ujoe --append
  joed add-genesis-account joe1m74zj2duq6aqunjz4syec6wtquxygrkpyjv2gl 7000000000ujoe --append
  joed add-genesis-account joe1daw2sahp0qcqcccv75p39wccj3guv6hkrwmzd7 10000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 14000000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 26000000000ujoe --append
  joed add-genesis-account joe1kjusn2sn4950zr449e70zgqhvtlc2rpu9c9ggf 10000000000ujoe --append
  joed add-genesis-account joe1s4ckh9405q0a3jhkwx9wkf9hsjh66nmupusw47 10000000000ujoe --append
  joed add-genesis-account joe1su8t3rdjy7zev8f8vgvkwzewycgknajn3v9pgc 8000000000ujoe --append
  joed add-genesis-account joe1399juvmrxytx5u54970zxkd8hz39669mul4296 10000000000ujoe --append
  joed add-genesis-account joe12c4xfww70fe4h37hncdea8lt80dny8ae4yqgul 3000000000ujoe --append
  joed add-genesis-account joe1aw9z5ajg32gu4qphkrypcyggcrjy6xdju7p0y4 1000000000ujoe --append
  joed add-genesis-account joe158k455lcxhrvvmrfu8m4c6g88fc2qgqqd7gvjg 8000000000ujoe --append
  joed add-genesis-account joe15zz35mvfz5wslq29ftasflgefdanhumc8g47d7 10000000000ujoe --append
  joed add-genesis-account joe160sa9dv06t8nvaw9gnq4h54dq93l90vvygj8wv 10000000000ujoe --append
  joed add-genesis-account joe1k2syvu9u06xngrn5wnz2lrymtg7t8wg8w7t3p7 3000000000ujoe --append
  joed add-genesis-account joe1xpe0fr4elxw00a0evs3l7kgqrzlv52ah7ndvjz 1000000000ujoe --append
  joed add-genesis-account joe1fxjvxxvk58za4rhw08754hzqtd0v2svtm4qahp 1000000000ujoe --append
  joed add-genesis-account joe1eqntnl6tzcj9h86psg4y4h6hh05g2h9nk8xtq8 5000000000ujoe --append
  joed add-genesis-account joe1ra8nts703udye3ve2hkqlgrsn07u9kwdz6m4ky 1000000000ujoe --append
  joed add-genesis-account joe1eljj8h8wc9me90s740qrl9n6slvn78lg4k0597 2000000000ujoe --append
  joed add-genesis-account joe17fm72hhqfhg7adjqt66lvspngtpds77j05ddqd 10000000000ujoe --append
  joed add-genesis-account joe1yjwzr7u8u64wtdycmgj9lcn98qr29hs7jqtynf 1000000000ujoe --append
  joed add-genesis-account joe1fn0h75ee5rudwfnuc47nrkqes5pftp37wqexlc 10000000000ujoe --append
  joed add-genesis-account joe1pyp3lwlg28zntcpwq87spsjm2sdng32qyr0qd9 3000000000ujoe --append
  joed add-genesis-account joe1v6fnklkj5av596xrv9sucdvcgk7llhrajmgfw2 6000000000ujoe --append
  joed add-genesis-account joe10r39fueph9fq7a6lgswu4zdsg8t3gxlq9c66u9 12000000000ujoe --append
  joed add-genesis-account joe13pf47w7f5p37fu0e9urgxqhe8qazq0e5anxtku 10000000000ujoe --append
  joed add-genesis-account joe18k0wh2n2lqxp85h9rrp2qufuyt3etspdz2qf95 1000000000ujoe --append
  joed add-genesis-account joe1f0v5af2nhemuarhjjchu3gq0v0vdmcl0cllqdw 7000000000ujoe --append
  joed add-genesis-account joe1gun9slw3p0wlcta9tplejyq88ztkngpwzjevf5 2000000000ujoe --append
  joed add-genesis-account joe1lgu66ly24wz0x95hkhuzny754hfm9pkue0jgsu 3000000000ujoe --append
  joed add-genesis-account joe1n5yr7uxk9eza6m29ew7zvrc0zkd5nvweymnmxr 6000000000ujoe --append
  joed add-genesis-account joe157cey3pkggh8zyun3vmp4ak5wpllwr0s9xj8uz 1000000000ujoe --append
  joed add-genesis-account joe1zd4gg9f07y0u8f23ynf9s3h2e0cfcl7pw2z5zl 10000000000ujoe --append
  joed add-genesis-account joe18e4fdwr23h9j2e6uucvuzsx9gwhys3q0rst3nw 2000000000ujoe --append
  joed add-genesis-account joe1cp2ufh3ze5zpuphccjg32pde93ctva39ms8ywn 1000000000ujoe --append
  joed add-genesis-account joe193exqqwzdm35987thgyy0sdcyslxenrfv790k0 8000000000ujoe --append
  joed add-genesis-account joe1mhgddg3dyha34p2zhalz9qx0sujvzw67x0wvhx 10000000000ujoe --append
  joed add-genesis-account joe1v82dpn8quldsxxn0g7n68nadehgcra56apykfc 10000000000ujoe --append
  joed add-genesis-account joe1suepmkk7s5qjgeugwqas39mrx0ev5p0xkyhjnz 1000000000ujoe --append
  joed add-genesis-account joe1fyarx5m49yx87rzd9m2d98yej5fjq99ddj3l3l 10000000000ujoe --append
  joed add-genesis-account joe1aszpxp86gq9qnw8yyyxfkcfcau0870u3r5sqhe 8000000000ujoe --append
  joed add-genesis-account joe1nxgcnzel7wwf8kn6mqjm3pu4wwwmsqgf24xk90 3000000000ujoe --append
  joed add-genesis-account joe1tkgyd0c0pjdxcu6f7z4h8g65whvdcsqhzl0t84 2000000000ujoe --append
  joed add-genesis-account joe1zfh6ccddln9e4fkwse7fcquvecpnnxykwhqheg 10000000000ujoe --append
  joed add-genesis-account joe1tapjtvaas6h7aludtf59zfq5s8u6y9nj0u4cfv 8000000000ujoe --append
  joed add-genesis-account joe1p982tvtezcekpgywp7v8jr28l0uc3ssq9suquk 10000000000ujoe --append
  joed add-genesis-account joe1h9v9er46xw46r3mmptywt2r46snz403pjfmd62 10000000000ujoe --append
  joed add-genesis-account joe1k9ng85nlhlc94865c3c0znygr7h3kre58r25u0 2000000000ujoe --append
  joed add-genesis-account joe17hlfgkzf4n3c8kxzqea7pz7ga0nx30h5wjmcu8 1000000000ujoe --append
  joed add-genesis-account joe1u7xwld7jrsj3dh8a7chezj8nj2ac36e8y0wydm 3000000000ujoe --append
  joed add-genesis-account joe199dm0ugv50k4qgcsxjc8p2rertstltxvt9vmra 2000000000ujoe --append
  joed add-genesis-account joe1m3d9eqmunr5c6p90s0sgfq5s7k2880sef0jwtv 1000000000ujoe --append
  joed add-genesis-account joe15zzf7wv4hnv3nmsmppgky5smla5n0ff9w924jn 1000000000ujoe --append
  joed add-genesis-account joe1h0qwpv0l2spu7h988dvh92q0v08gkkwsekuxz8 3000000000ujoe --append
  joed add-genesis-account joe1fvnn96kq7xex7t365ltva3msu6ewntxf85zy3a 9000000000ujoe --append
  joed add-genesis-account joe19y8n0f8t6azwftwvdmu9scztunyhdy07ufltvz 10000000000ujoe --append
  joed add-genesis-account joe1nc9w0zatu5sqcj90dvvn3cs30c00d5hajtczs6 1000000000ujoe --append
  joed add-genesis-account joe1s6yhrhy3lc4c367emt02g9wc7590r2qg8he9t6 1000000000ujoe --append
  joed add-genesis-account joe1jtzmwppdadmyhv6j68dujwghrp8gkr8str53l4 2000000000ujoe --append
  joed add-genesis-account joe14qxxnvute7k8uceqtcljurzl0sv3dt4gtxd8n0 4000000000ujoe --append
  joed add-genesis-account joe10ujj0xx8fcqwsnrfkprjnhvu4g2x230un28zts 1000000000ujoe --append
  joed add-genesis-account joe1kv6uc92k3jtkkt63f43az655qtpgphsd8qd2k4 1000000000ujoe --append
  joed add-genesis-account joe19xma25ppv8ugwtvzpx5n5mde67ngazy47997te 5000000000ujoe --append
  joed add-genesis-account joe1qfh0hs2cthjtm8xyfpklcc03fu3f0ke7fhycrl 9000000000ujoe --append
  joed add-genesis-account joe1nuspgf00cfv0g0wph2mvkzarn88y76ty4e5tc8 1000000000ujoe --append
  joed add-genesis-account joe109dxwewpvk00jd54g6l0d8ds2ung3qa6s9z3lv 1000000000ujoe --append
  joed add-genesis-account joe10hncce2cs2hlv7l4djw4syhx0sevdz92fk2nvn 3000000000ujoe --append
  joed add-genesis-account joe1358cqlmnnpam09r40yg8x8kmxtgdds3kxhgmwn 2000000000ujoe --append
  joed add-genesis-account joe1958ex963n93nhmvcrtlwwtr0c9qmvewhdvuuef 2000000000ujoe --append
  joed add-genesis-account joe13mzcw7ezlgzcgpls7xqxpsg5qqsxvp8jyug6v9 1000000000ujoe --append
  joed add-genesis-account joe1mw6l2gd2l0jt8phz7yz5l7vyfl4h2qpk9ygm9w 1000000000ujoe --append
  joed add-genesis-account joe1t9ldnlu5u0mwcsjmpd0d5yr6tn2kvwru6qsdpf 1000000000ujoe --append
  joed add-genesis-account joe1vnneuwwg3c8k3t33hlww039ql4wn90spqvcsxs 1000000000ujoe --append
  joed add-genesis-account joe1ccfvra0ksy09d6wx559fnrd2msppgdcecnf7cq 1000000000ujoe --append
  joed add-genesis-account joe1r2ullmtu3nwxxt3fmt6kyq6zq3k2cqyxhsvwrq 4000000000ujoe --append
  joed add-genesis-account joe16eraqn22mm7n3rqndkw6chc7qk2pdqgksmqjqq 1000000000ujoe --append
  joed add-genesis-account joe1u3ju3jgkzplnvh2g0azu754n7rcxe58wrph7gj 2000000000ujoe --append
  joed add-genesis-account joe1n54j9up35trva5fddg29ma5zy605agwlf860w0 2000000000ujoe --append
  joed add-genesis-account joe19nmj0pugzugswrtkge2nkklh74lfphvk392xm3 6000000000ujoe --append
  joed add-genesis-account joe1xuwl7x8htyl26t7pe3l0x6auj3j9jwd2tzmran 1000000000ujoe --append
  joed add-genesis-account joe1snamxl3mua7kzhfr6e2ycm45t2u4phfe994mhl 3000000000ujoe --append
  joed add-genesis-account joe1x8958xm5el05p4thmg3vajv883z2w434e7hktt 1000000000ujoe --append
  joed add-genesis-account joe1hmda69ykt8rzsrxanrxm2r837edln3pjx26gky 5000000000ujoe --append
  joed add-genesis-account joe1z926ax906k0ycsuckele6x5hh66e2m4mmvpsth 1000000000ujoe --append
  joed add-genesis-account joe1lvrgkxm0gzvsh2ruve02k3tq3dv3fce3uuq7kz 2000000000ujoe --append
  joed add-genesis-account joe10flwce9rgdwmecen8v8glfcfll7mphyw6yac37 2000000000ujoe --append
  joed add-genesis-account joe17pl2q00c9958l2v63rrzxzvdgxqrwczhrxxlyt 1000000000ujoe --append
  joed add-genesis-account joe1skvwfwcq96l8506vqf6c2duyqatcawr4dv3pnl 1000000000ujoe --append
  joed add-genesis-account joe1auw5csq749tcuw9cy94ldpyhwmvm7qagv27u7j 1000000000ujoe --append
  joed add-genesis-account joe1n8esahe5623r63ffmtu2ytgwtf8lvfay8uvkdz 4000000000ujoe --append
  joed add-genesis-account joe14vgvwqadrluenyepcn7lhv6e8lq507raul04xh 1000000000ujoe --append
  joed add-genesis-account joe1hhayvgvz3qqw40r7tg09wan8932wuw6egyggjt 2000000000ujoe --append
  joed add-genesis-account joe1m3567wl3jl0dwvm5m3et07hwmg83vvn86vx2wc 1000000000ujoe --append
  joed add-genesis-account joe1ftkdaf64j80fvdxc93n489djm0hd3830mcm4tw 1000000000ujoe --append
  joed add-genesis-account joe1md9zaw7gpnrfl2swql6hjvgttjuf6cvk27tvls 1000000000ujoe --append
  joed add-genesis-account joe1e5zy0fer7t7wdx9uxlyclej6lqlmts9hss9fvh 2000000000ujoe --append
  joed add-genesis-account joe1eywufmvkl4805stahfkdt0qetc3r0zvham5yu7 1000000000ujoe --append
  joed add-genesis-account joe1n4a7szqm4gu0xegntwy245fjq8tlfh4vufnvza 1000000000ujoe --append
  joed add-genesis-account joe1vv2nm8tvpyx88r07hx5x4zyctpkztp6yerft4k 1000000000ujoe --append
  joed add-genesis-account joe1eqemvtjtfx43snexxya8lav4h3fpxzsrtleu9l 1000000000ujoe --append
  joed add-genesis-account joe1ex58ltuvruyew8849atkwqxr22nr8jww466yh6 3000000000ujoe --append
  joed add-genesis-account joe17nun6cg7a5xtu9fz2p8scxr7u9jmrf5v9q4q86 1000000000ujoe --append
  joed add-genesis-account joe1cxyjsjj7qjkh9gearccn563hwujrqdewr4pwvn 1000000000ujoe --append
  joed add-genesis-account joe1cv6sc24umsu57kl2x7d0wwks0w44zsc3d96298 2000000000ujoe --append
  joed add-genesis-account joe1p80cpg464u48k7hr3a6myeu4s3ngr3t8cxvp5n 1000000000ujoe --append
  joed add-genesis-account joe19zz54hh3gdylmavz9x0zjt3yppfscrhe0cuyz8 1000000000ujoe --append
  joed add-genesis-account joe1wvwv6n724yq5xs9z2lk03mspwruyxjyq3mh7yz 1000000000ujoe --append
  joed add-genesis-account joe1qaphxxcc6gg0023cnv6n05yrkkns60keqe8qkd 2000000000ujoe --append
  joed add-genesis-account joe1ar6qlg80p0l3zwfaq2qqv8h4gp5sxpg37u450x 1000000000ujoe --append
  joed add-genesis-account joe1q3scuwfpapydfzrkfssxuwccspewlp6s4mcu0k 1000000000ujoe --append
  joed add-genesis-account joe1u7x9rf8eq9z96u54fepu625r22gtkan2fkya5a 1000000000ujoe --append
  joed add-genesis-account joe1c0sm54k3wln0adsrrxhlge9dje2lrer3mhkj7t 1000000000ujoe --append
  joed add-genesis-account joe1mzkwyvyxg4jtczr6s7mjktfrr7ksfwmxdpjw8z 1000000000ujoe --append

  # airdrop 3 (4pm est Nov 20)joed add-genesis-account joe1fn0h75ee5rudwfnuc47nrkqes5pftp37wqexlc 16000000000ujoe --append
  joed add-genesis-account joe15zes95rmpr6wg8pd3w7fncp6zqd7vhyf2eq8gz 9600000000ujoe --append
  joed add-genesis-account joe1cnwp99x5m24ucfjkh8csn0nt86x4j0vjz8yxt0 14400000000ujoe --append
  joed add-genesis-account joe1t59elqhcfn0uce9v7kndazwfx87ggv0uq64zfa 12800000000ujoe --append
  joed add-genesis-account joe159edfymz0p8mq85s7nw4fn336fsx0j4cd3nq5x 16000000000ujoe --append
  joed add-genesis-account joe1zxzk3jpv5aprnpk0hqwd87uznzcyluzrd0dw2y 16000000000ujoe --append
  joed add-genesis-account joe1rsyp9aypxa8tmgtc7rucqyssl6muf887n3488x 1600000000ujoe --append
  joed add-genesis-account joe1wtcp7m7589vdmsse30rsrlt357dwy0qy4slx8w 16000000000ujoe --append
  joed add-genesis-account joe137p2qrs3qw00c28679pwu4a76md48q8z3k4qhz 9600000000ujoe --append
  joed add-genesis-account joe1m74zj2duq6aqunjz4syec6wtquxygrkpyjv2gl 8000000000ujoe --append
  joed add-genesis-account joe1daw2sahp0qcqcccv75p39wccj3guv6hkrwmzd7 9600000000ujoe --append
  joed add-genesis-account joe10r39fueph9fq7a6lgswu4zdsg8t3gxlq9c66u9 16000000000ujoe --append
  joed add-genesis-account joe1w02p95wuatuce4f688w6k76npp88p68339tlgx 3200000000ujoe --append
  joed add-genesis-account joe157cey3pkggh8zyun3vmp4ak5wpllwr0s9xj8uz 14400000000ujoe --append
  joed add-genesis-account joe1fvws4js0uw3xprykc49ktcvrv5k0s8ywwf5p7q 3200000000ujoe --append
  joed add-genesis-account joe10a29hu7chl55ar4wsyjueqxc7smudpvr0hkh23 16000000000ujoe --append
  joed add-genesis-account joe1kjusn2sn4950zr449e70zgqhvtlc2rpu9c9ggf 16000000000ujoe --append
  joed add-genesis-account joe1nru33h7068tj9wd82n3tv4u8xpydwfraq52npy 8000000000ujoe --append
  joed add-genesis-account joe1s4ckh9405q0a3jhkwx9wkf9hsjh66nmupusw47 16000000000ujoe --append
  joed add-genesis-account joe1zfh6ccddln9e4fkwse7fcquvecpnnxykwhqheg 16000000000ujoe --append
  joed add-genesis-account joe1s77v2e9rvz7ljgsad4ldfp85jjnygc6ddvsazf 12800000000ujoe --append
  joed add-genesis-account joe1su8t3rdjy7zev8f8vgvkwzewycgknajn3v9pgc 8000000000ujoe --append
  joed add-genesis-account joe1pn8nw8mu3je4wtjmsxtshu250h930t308spgsl 16000000000ujoe --append
  joed add-genesis-account joe1mkjcsmard8jf6wmnf5q54yavqqt4hv6lz82e6s 3200000000ujoe --append
  joed add-genesis-account joe157glcvuxw6z79vzx9fq8h2yvc33wq7xv7q8gkk 1600000000ujoe --append
  joed add-genesis-account joe1mf90w34uxzlxuydeetc2dkyc5c993rlepk85qn 1600000000ujoe --append
  joed add-genesis-account joe1e3rda5dlwwy5sjpvgwmkqc3xqt72c7zr0ra2zx 16000000000ujoe --append
  joed add-genesis-account joe1agprce4jnftapsg2k4vkyqq3ez6dpjdlf864ef 16000000000ujoe --append
  joed add-genesis-account joe158k455lcxhrvvmrfu8m4c6g88fc2qgqqd7gvjg 16000000000ujoe --append
  joed add-genesis-account joe1j24l07l9kjnzucgj20wjwxpq6xdumywvxvwrk3 1600000000ujoe --append
  joed add-genesis-account joe18lxa0q4qeu39ntqv92xwged50qtknxf58kx3q4 4800000000ujoe --append
  joed add-genesis-account joe1zk3ekyresv9xenax23u2eeuf4a3yfccc6hl6yu 1600000000ujoe --append
  joed add-genesis-account joe15zzf7wv4hnv3nmsmppgky5smla5n0ff9w924jn 8000000000ujoe --append
  joed add-genesis-account joe16knwyz30hhfmhky3cg557kx63eq3wvwjc8a244 16000000000ujoe --append
  joed add-genesis-account joe160sa9dv06t8nvaw9gnq4h54dq93l90vvygj8wv 16000000000ujoe --append
  joed add-genesis-account joe1zpanw06mznyasr2dl5m4p4t9at87n977xddz7s 4800000000ujoe --append
  joed add-genesis-account joe16tq0vcl5t9gep0sak7evex32xdqheaxkt9cegd 1600000000ujoe --append
  joed add-genesis-account joe1xpe0fr4elxw00a0evs3l7kgqrzlv52ah7ndvjz 1600000000ujoe --append
  joed add-genesis-account joe1fxjvxxvk58za4rhw08754hzqtd0v2svtm4qahp 1600000000ujoe --append
  joed add-genesis-account joe1ggfgy669y3mlq7p9ujycen3qfk7gkfgjxqz278 1600000000ujoe --append
  joed add-genesis-account joe13au3wrpl82pcjrf9q69k2eaazpk6v4t6cmkplu 16000000000ujoe --append
  joed add-genesis-account joe1eqntnl6tzcj9h86psg4y4h6hh05g2h9nk8xtq8 8000000000ujoe --append
  joed add-genesis-account joe1c362wx6uzfuncgm4t0rex675pzxq7nmpca5c7a 1600000000ujoe --append
  joed add-genesis-account joe1vjmhted85xtne54y26wcnfnzj9cnvm6lwe3cp4 1600000000ujoe --append
  joed add-genesis-account joe1csvqpy967m7gvdnvvuukchhvujz7w5dcq7waq6 14400000000ujoe --append
  joed add-genesis-account joe1ra8nts703udye3ve2hkqlgrsn07u9kwdz6m4ky 1600000000ujoe --append
  joed add-genesis-account joe1eduu6rk03m7tqthj4weuvwqmwjxmh52wdm9cc8 1600000000ujoe --append
  joed add-genesis-account joe1fk95hrxtxz48ncx9ak5zgqna8zp5f6ey42v45a 8000000000ujoe --append
  joed add-genesis-account joe1ey0zmwryem278r7rfhj90uxfuq4ndl9jnfjqnt 1600000000ujoe --append
  joed add-genesis-account joe17fm72hhqfhg7adjqt66lvspngtpds77j05ddqd 6400000000ujoe --append
  joed add-genesis-account joe15eeys43gsk8m4ayu9p568253le5zy4ehkv22al 16000000000ujoe --append
  joed add-genesis-account joe1phrw03kmjl34pjkvv5zl5lrskhdp6374qhukhk 3200000000ujoe --append
  joed add-genesis-account joe1au5ujaln37vlxdq6zmrj0xgcranskzm94c6xsn 1600000000ujoe --append
  joed add-genesis-account joe14nenrkrrxm6jjqp7rue7rxuzwngkmw86hqp4w3 3200000000ujoe --append
  joed add-genesis-account joe1pyp3lwlg28zntcpwq87spsjm2sdng32qyr0qd9 3200000000ujoe --append
  joed add-genesis-account joe1qc2nxqduauxqj79w5fvqcvdaaamnaz9q8auale 1600000000ujoe --append
  joed add-genesis-account joe1c2sxs95sn4fszap4874qcuwvewjxs4gf05zp88 4800000000ujoe --append
  joed add-genesis-account joe1hdh5xna5h5sp7djfxr4vu4qkf7w6pswwwmf7ny 1600000000ujoe --append
  joed add-genesis-account joe1pv0ca7a5q7jr5yz0gkvru8la5he6t64vnc83qa 3200000000ujoe --append
  joed add-genesis-account joe1ym0f5dded6nttyu8x72nxqfcmdku4hkyf2tqzn 4800000000ujoe --append
  joed add-genesis-account joe1yppjw2thnmrfc7tt0msuw6zcntngcdxd2f2lkv 1600000000ujoe --append
  joed add-genesis-account joe1v6fnklkj5av596xrv9sucdvcgk7llhrajmgfw2 9600000000ujoe --append
  joed add-genesis-account joe1295scezup728qw2hjyfxev0dcj27tvxk0fdpwm 3200000000ujoe --append
  joed add-genesis-account joe148y8u0ejvh8psvg83rgt2w5sa6d5t5tlkpn4fp 1600000000ujoe --append
  joed add-genesis-account joe1md9zaw7gpnrfl2swql6hjvgttjuf6cvk27tvls 1600000000ujoe --append
  joed add-genesis-account joe1wzrfsdhg9s56xpgstwew8zffst3z86vvhqrcu6 8000000000ujoe --append
  joed add-genesis-account joe1xgtqehnpuxmggefhfchc8lcsu8xl565s5hnk8e 3200000000ujoe --append
  joed add-genesis-account joe1u7xwld7jrsj3dh8a7chezj8nj2ac36e8y0wydm 11200000000ujoe --append
  joed add-genesis-account joe18k0wh2n2lqxp85h9rrp2qufuyt3etspdz2qf95 1600000000ujoe --append
  joed add-genesis-account joe1f0v5af2nhemuarhjjchu3gq0v0vdmcl0cllqdw 8000000000ujoe --append
  joed add-genesis-account joe1gun9slw3p0wlcta9tplejyq88ztkngpwzjevf5 3200000000ujoe --append
  joed add-genesis-account joe1cnskgpm8pasf628kzqs5vqlk5qk0y6247eek53 11200000000ujoe --append
  joed add-genesis-account joe15zz35mvfz5wslq29ftasflgefdanhumc8g47d7 9600000000ujoe --append
  joed add-genesis-account joe1n5yr7uxk9eza6m29ew7zvrc0zkd5nvweymnmxr 9600000000ujoe --append
  joed add-genesis-account joe1mr4p8fspc7j9jnxz3rv7qzaxwxajn0qqp969yk 8000000000ujoe --append
  joed add-genesis-account joe1kp22rcpkavm47tt7xahnjjxf4tjdlrf0t75kqa 1600000000ujoe --append
  joed add-genesis-account joe1mgudd8lpsmua88uzf4mhuwp6wcj8l50tpp3a3s 9600000000ujoe --append
  joed add-genesis-account joe1tvpn4r6h42de9z3w4gyv8ptqg5wf9g6zg7tu97 1600000000ujoe --append
  joed add-genesis-account joe18e4fdwr23h9j2e6uucvuzsx9gwhys3q0rst3nw 8000000000ujoe --append
  joed add-genesis-account joe1yjaxcrdt7eugeqeu97qqsp6l982qm4pqdktq04 1600000000ujoe --append
  joed add-genesis-account joe1cp2ufh3ze5zpuphccjg32pde93ctva39ms8ywn 3200000000ujoe --append
  joed add-genesis-account joe18zua5r5w4f34aensgrxs6a0hckmytfsp5zqxqk 1600000000ujoe --append
  joed add-genesis-account joe1eljj8h8wc9me90s740qrl9n6slvn78lg4k0597 3200000000ujoe --append
  joed add-genesis-account joe1cv6sc24umsu57kl2x7d0wwks0w44zsc3d96298 16000000000ujoe --append
  joed add-genesis-account joe1v82dpn8quldsxxn0g7n68nadehgcra56apykfc 16000000000ujoe --append
  joed add-genesis-account joe1suepmkk7s5qjgeugwqas39mrx0ev5p0xkyhjnz 1600000000ujoe --append
  joed add-genesis-account joe1fyarx5m49yx87rzd9m2d98yej5fjq99ddj3l3l 16000000000ujoe --append
  joed add-genesis-account joe19uxd4p5shqh2cp3nntnatds03e3xkkgd6yfxvz 16000000000ujoe --append
  joed add-genesis-account joe1ez498svz3wykfvgs8uhlzxe00qtvfphehyv2sg 1600000000ujoe --append
  joed add-genesis-account joe1aszpxp86gq9qnw8yyyxfkcfcau0870u3r5sqhe 12800000000ujoe --append
  joed add-genesis-account joe1zd4gg9f07y0u8f23ynf9s3h2e0cfcl7pw2z5zl 8000000000ujoe --append
  joed add-genesis-account joe1z35x9dzrsgc0fzg2j3dp35jtjr0ytd44pz59aw 11200000000ujoe --append
  joed add-genesis-account joe1nxgcnzel7wwf8kn6mqjm3pu4wwwmsqgf24xk90 3200000000ujoe --append
  joed add-genesis-account joe1tkgyd0c0pjdxcu6f7z4h8g65whvdcsqhzl0t84 1600000000ujoe --append
  joed add-genesis-account joe1xuwl7x8htyl26t7pe3l0x6auj3j9jwd2tzmran 16000000000ujoe --append
  joed add-genesis-account joe1uf8fuu5uy2jt0qpzjuq2urhp7j8hnhw647uwvy 1600000000ujoe --append
  joed add-genesis-account joe1j0easnh40hyvnfx7ww9lu9g4rartwweadc8lnw 1600000000ujoe --append
  joed add-genesis-account joe1jewnfx349tfdmp93tahv285z44earczpe42zg5 1600000000ujoe --append
  joed add-genesis-account joe1r4c2g5wex39kcdeahgxjaxnr2wnv7jvxemhhfa 16000000000ujoe --append
  joed add-genesis-account joe14mqxd2m5anvt45ay5x0yg68d4vhhqmd09hhlvf 1600000000ujoe --append
  joed add-genesis-account joe19xma25ppv8ugwtvzpx5n5mde67ngazy47997te 14400000000ujoe --append
  joed add-genesis-account joe1h9v9er46xw46r3mmptywt2r46snz403pjfmd62 16000000000ujoe --append
  joed add-genesis-account joe1k9ng85nlhlc94865c3c0znygr7h3kre58r25u0 3200000000ujoe --append
  joed add-genesis-account joe17hlfgkzf4n3c8kxzqea7pz7ga0nx30h5wjmcu8 1600000000ujoe --append
  joed add-genesis-account joe1k9cspanymj2ffl576lgtp865dnfedqzw09h47a 11200000000ujoe --append
  joed add-genesis-account joe199dm0ugv50k4qgcsxjc8p2rertstltxvt9vmra 3200000000ujoe --append
  joed add-genesis-account joe1wx6qsqpsgmjez0rzux825efyze4d505dl7je2r 1600000000ujoe --append
  joed add-genesis-account joe1c0sm54k3wln0adsrrxhlge9dje2lrer3mhkj7t 12800000000ujoe --append
  joed add-genesis-account joe13pf47w7f5p37fu0e9urgxqhe8qazq0e5anxtku 12800000000ujoe --append
  joed add-genesis-account joe1k2syvu9u06xngrn5wnz2lrymtg7t8wg8w7t3p7 1600000000ujoe --append
  joed add-genesis-account joe1m3d9eqmunr5c6p90s0sgfq5s7k2880sef0jwtv 1600000000ujoe --append
  joed add-genesis-account joe1j4dvmypy70uv5gzef2tvj244qlp7p690hlx8kx 1600000000ujoe --append
  joed add-genesis-account joe1h0qwpv0l2spu7h988dvh92q0v08gkkwsekuxz8 4800000000ujoe --append
  joed add-genesis-account joe1fvnn96kq7xex7t365ltva3msu6ewntxf85zy3a 16000000000ujoe --append
  joed add-genesis-account joe19y8n0f8t6azwftwvdmu9scztunyhdy07ufltvz 14400000000ujoe --append
  joed add-genesis-account joe1mhgddg3dyha34p2zhalz9qx0sujvzw67x0wvhx 9600000000ujoe --append
  joed add-genesis-account joe1qfh0hs2cthjtm8xyfpklcc03fu3f0ke7fhycrl 3200000000ujoe --append
  joed add-genesis-account joe1v5ft27rre0m3th7etfvm5c8vhw462vh6rz9wpa 1600000000ujoe --append
  joed add-genesis-account joe1lzc0ql4w9luux6r0yxyjk8c892zh4wkyh8chs4 8000000000ujoe --append
  joed add-genesis-account joe1jtzmwppdadmyhv6j68dujwghrp8gkr8str53l4 3200000000ujoe --append
  joed add-genesis-account joe14qxxnvute7k8uceqtcljurzl0sv3dt4gtxd8n0 6400000000ujoe --append
  joed add-genesis-account joe1n4ldju4nd65uac55mtyqhppk9zxmxj4qtcqvmf 1600000000ujoe --append
  joed add-genesis-account joe1kv6uc92k3jtkkt63f43az655qtpgphsd8qd2k4 1600000000ujoe --append
  joed add-genesis-account joe1qaphxxcc6gg0023cnv6n05yrkkns60keqe8qkd 1600000000ujoe --append
  joed add-genesis-account joe1tm3zueyaxtz78y0yqx38lyjk4fezpsyp0zr5rp 4800000000ujoe --append
  joed add-genesis-account joe1tjhfuchkfdz973at5q7xdvux2mcfna6zhzuwku 1600000000ujoe --append
  joed add-genesis-account joe179t2sm5tewkqc26ekum932yt03f6adqq096w6u 1600000000ujoe --append
  joed add-genesis-account joe1degr9kam3sdzfhaaydkg9367r60qxd2hwemq9v 1600000000ujoe --append
  joed add-genesis-account joe1nuspgf00cfv0g0wph2mvkzarn88y76ty4e5tc8 1600000000ujoe --append
  joed add-genesis-account joe12shvtzhs82sa06qn2hhmu5yeu4534l2rg8nwep 1600000000ujoe --append
  joed add-genesis-account joe1678dm3re67mj3tjp2vrdn2n7w88swa3u8jmmlh 1600000000ujoe --append
  joed add-genesis-account joe1lcjttd42acryhac9r5jf2e06z6gl4hc8ll90zt 3200000000ujoe --append
  joed add-genesis-account joe1d4vmt2ephakayuvjgnwdfjxcvz8phvn6kgceqm 1600000000ujoe --append
  joed add-genesis-account joe1jwyvpmyplz84p22fpar3uy030f08333gqmka3f 12800000000ujoe --append
  joed add-genesis-account joe1qttmfljc3qcerypthjtxw4a8675xcf9hk8uxsv 1600000000ujoe --append
  joed add-genesis-account joe1srung7l9l809typewrylkm9nagdxydun4vkcv6 1600000000ujoe --append
  joed add-genesis-account joe1358cqlmnnpam09r40yg8x8kmxtgdds3kxhgmwn 3200000000ujoe --append
  joed add-genesis-account joe1ajl8ga754hmems6c33ljxerxvpw9detpnp5pu8 1600000000ujoe --append
  joed add-genesis-account joe13mzcw7ezlgzcgpls7xqxpsg5qqsxvp8jyug6v9 1600000000ujoe --append
  joed add-genesis-account joe10gkd7mqvrus65e8cz28gpc4cxwgl57zr6hej8p 1600000000ujoe --append
  joed add-genesis-account joe1mw6l2gd2l0jt8phz7yz5l7vyfl4h2qpk9ygm9w 1600000000ujoe --append
  joed add-genesis-account joe155x2gpmfvyymnqkm5364nkzn54uke7syftvr6s 4800000000ujoe --append
  joed add-genesis-account joe1wmvvnk6gx6gkknvegslgrydmsx2khrdt66rhav 1600000000ujoe --append
  joed add-genesis-account joe1t9ldnlu5u0mwcsjmpd0d5yr6tn2kvwru6qsdpf 1600000000ujoe --append
  joed add-genesis-account joe1eymapsam3l5ymas76avez0adlvw3u293ey2vkr 1600000000ujoe --append
  joed add-genesis-account joe1vnneuwwg3c8k3t33hlww039ql4wn90spqvcsxs 1600000000ujoe --append
  joed add-genesis-account joe1a3aj9p880hwlwuytwaul7zu2tcrtsg08dz6z0h 6400000000ujoe --append
  joed add-genesis-account joe1r2ullmtu3nwxxt3fmt6kyq6zq3k2cqyxhsvwrq 6400000000ujoe --append
  joed add-genesis-account joe1tnnhrqpm8rxj7xja5jcu2vmlv2yxz5narxcj6l 3200000000ujoe --append
  joed add-genesis-account joe16eraqn22mm7n3rqndkw6chc7qk2pdqgksmqjqq 1600000000ujoe --append
  joed add-genesis-account joe10hncce2cs2hlv7l4djw4syhx0sevdz92fk2nvn 4800000000ujoe --append
  joed add-genesis-account joe1fswd987hf7x89wt6r4zley3w0p63ya3smujyec 1600000000ujoe --append
  joed add-genesis-account joe1xtlhmeuq484ketayyne603fnqk5svre9fp4c25 1600000000ujoe --append
  joed add-genesis-account joe1vqd6hxuqurm7phg586vw6rv28rga4edlswfdtc 1600000000ujoe --append
  joed add-genesis-account joe1u3ju3jgkzplnvh2g0azu754n7rcxe58wrph7gj 3200000000ujoe --append
  joed add-genesis-account joe13snvtmj26n6jyt79etf4vejezuqk8v0dkjua2n 1600000000ujoe --append
  joed add-genesis-account joe140478rafvztvv8te38r9yv55aph34du56xdw8u 1600000000ujoe --append
  joed add-genesis-account joe1utxx4enrhnsstwnzkrsrfdufkyxwx7t7fuju8p 1600000000ujoe --append
  joed add-genesis-account joe1dc7jnhq53vd6amag2wj76haqsfdrkr6assp5gs 1600000000ujoe --append
  joed add-genesis-account joe1n54j9up35trva5fddg29ma5zy605agwlf860w0 3200000000ujoe --append
  joed add-genesis-account joe1fjqcakq93dt0dw38tkzhgzvuycrwyqwfny6qdz 1600000000ujoe --append
  joed add-genesis-account joe1h46ylzpymlefcwl4hdjf8a9t8xhgg2lynz9mwt 1600000000ujoe --append
  joed add-genesis-account joe1mj2jvmy24yskk4yr3xxzxggq3j8uxdpse9rw4l 3200000000ujoe --append
  joed add-genesis-account joe19nmj0pugzugswrtkge2nkklh74lfphvk392xm3 9600000000ujoe --append
  joed add-genesis-account joe1lge4x4gre6vmz7gamw7a8f6u7pmwlsula2cee8 1600000000ujoe --append
  joed add-genesis-account joe1tapjtvaas6h7aludtf59zfq5s8u6y9nj0u4cfv 4800000000ujoe --append
  joed add-genesis-account joe1ru0nx4cm8r3g9dyw2kad7d3cz3uym2yug6mxyv 1600000000ujoe --append
  joed add-genesis-account joe1qaunnsdc544tj7cpe4m7uf42khlumvx0muau6x 3200000000ujoe --append
  joed add-genesis-account joe1jsj9hewhd8dvwfckmgf632r70ajaqkdvdhzp6h 1600000000ujoe --append
  joed add-genesis-account joe1434zluxmfj85vwpc3stk03wrcuzrqllcwndjlm 1600000000ujoe --append
  joed add-genesis-account joe1lgu66ly24wz0x95hkhuzny754hfm9pkue0jgsu 1600000000ujoe --append
  joed add-genesis-account joe193exqqwzdm35987thgyy0sdcyslxenrfv790k0 3200000000ujoe --append
  joed add-genesis-account joe1x8958xm5el05p4thmg3vajv883z2w434e7hktt 1600000000ujoe --append
  joed add-genesis-account joe179l49cwfczsy6g3puzw0wlcl7fksxwl0zpe6mn 1600000000ujoe --append
  joed add-genesis-account joe1esdkarkg89fzunmzrjryvqay7x5xt6zdvejpp5 1600000000ujoe --append
  joed add-genesis-account joe1fxafs2mfgwzyjn42h7njcn9qng0nskwmfqsn5h 1600000000ujoe --append
  joed add-genesis-account joe1z926ax906k0ycsuckele6x5hh66e2m4mmvpsth 1600000000ujoe --append
  joed add-genesis-account joe18e7f9qmn9hjwv4fc9lu6fr3mxsc2uvcffnhkk4 1600000000ujoe --append
  joed add-genesis-account joe16gv8q27zjwdnll9m99z7sa78hgre888v7ayn89 1600000000ujoe --append
  joed add-genesis-account joe13rjet9eucsezer5yuqsgzkzpq30rz7hccgfw2j 1600000000ujoe --append
  joed add-genesis-account joe1crzm2qa6qp8yuahpcl6veapn2nep8ql5wyr5up 1600000000ujoe --append
  joed add-genesis-account joe1drzngn3fdluhjp5rpfuny2hmkwsmzjsxjpfxn2 3200000000ujoe --append
  joed add-genesis-account joe1lvrgkxm0gzvsh2ruve02k3tq3dv3fce3uuq7kz 3200000000ujoe --append
  joed add-genesis-account joe1ar6qlg80p0l3zwfaq2qqv8h4gp5sxpg37u450x 9600000000ujoe --append
  joed add-genesis-account joe17pl2q00c9958l2v63rrzxzvdgxqrwczhrxxlyt 1600000000ujoe --append
  joed add-genesis-account joe1skvwfwcq96l8506vqf6c2duyqatcawr4dv3pnl 1600000000ujoe --append
  joed add-genesis-account joe1nhu5zp6l686u39aatk9apejk4ydjqclh34q9a5 1600000000ujoe --append
  joed add-genesis-account joe1yd65yjsl4mnmjkget3rk7cfc0cg372ltdlf39s 1600000000ujoe --append
  joed add-genesis-account joe1ud6wg8twupdue4gxmjgmu47gflfl8zscegjelh 1600000000ujoe --append
  joed add-genesis-account joe1yen5f0ej9njg0d9pa8nn2hwjpqqm36zjwp7zd9 1600000000ujoe --append
  joed add-genesis-account joe1g3mhhfh5npysxrsv3gqw7r00arksk5xpmaarnp 1600000000ujoe --append
  joed add-genesis-account joe13qmz4tnvqjuyfegnle35farscnz4f0av87ddcr 1600000000ujoe --append
  joed add-genesis-account joe19jw025fpcmayxj4qxp50uh2jvxuff57vcur5v9 4800000000ujoe --append
  joed add-genesis-account joe1ymahmmfljppx8t8s76c8hupq26zqfylz9zn5uq 1600000000ujoe --append
  joed add-genesis-account joe1rgnd3wftjyzm4j0jgkxlcvfhs4u6qafwzvpyl5 1600000000ujoe --append
  joed add-genesis-account joe1q3scuwfpapydfzrkfssxuwccspewlp6s4mcu0k 3200000000ujoe --append
  joed add-genesis-account joe17ejpx7uu4lq9j9gaemnwwl4k2gvwz907yn7k4k 1600000000ujoe --append
  joed add-genesis-account joe1jxc7ph07y83qwsn4gud25rv7srhkdxt049hyem 1600000000ujoe --append
  joed add-genesis-account joe1vlxgrnzy5jcfa5qn32p75jh8rt5kzkkc93gyza 1600000000ujoe --append
  joed add-genesis-account joe1n8esahe5623r63ffmtu2ytgwtf8lvfay8uvkdz 6400000000ujoe --append
  joed add-genesis-account joe14vgvwqadrluenyepcn7lhv6e8lq507raul04xh 1600000000ujoe --append
  joed add-genesis-account joe1lc9r0x0my0h45wxuycedtu5lqkl0s84xtftae0 1600000000ujoe --append
  joed add-genesis-account joe1r2cc2ejqcva6g6d4u9mhu3aynkj09tr75e59es 4800000000ujoe --append
  joed add-genesis-account joe1hhayvgvz3qqw40r7tg09wan8932wuw6egyggjt 1600000000ujoe --append
  joed add-genesis-account joe1yf0ng6dmgsq63pxw7k0kt2pd3370gq99r8xgcn 1600000000ujoe --append
  joed add-genesis-account joe1yjwzr7u8u64wtdycmgj9lcn98qr29hs7jqtynf 4800000000ujoe --append
  joed add-genesis-account joe1vtvrpyk7snck7kv8cfmvxms3thqkua27such94 4800000000ujoe --append
  joed add-genesis-account joe1udmg6t4atgyseshsf7kz59ufywh82grlczmr8q 1600000000ujoe --append
  joed add-genesis-account joe1v6keyckgr5nfnf4rp6x6su5tyrwzkee04vlqy0 4800000000ujoe --append
  joed add-genesis-account joe10gspc953t0smgs4as886varkatcmjrgsuael0t 1600000000ujoe --append
  joed add-genesis-account joe1etjhkakk2zxy3ux48r6ketrnxg2rpyagklshja 1600000000ujoe --append
  joed add-genesis-account joe1ftkdaf64j80fvdxc93n489djm0hd3830mcm4tw 1600000000ujoe --append
  joed add-genesis-account joe1g6hp8n8mefwmg8x3fhg4zc33d68rgfp8uy5j8s 1600000000ujoe --append
  joed add-genesis-account joe1dagf3gr0h6cer294e67z2jdwnugtegrzxaulnf 1600000000ujoe --append
  joed add-genesis-account joe1mql46ppfxjwqljyynja0ea9m2jz5whmhptjme7 1600000000ujoe --append
  joed add-genesis-account joe1hmda69ykt8rzsrxanrxm2r837edln3pjx26gky 4800000000ujoe --append
  joed add-genesis-account joe1e5zy0fer7t7wdx9uxlyclej6lqlmts9hss9fvh 3200000000ujoe --append
  joed add-genesis-account joe10ujj0xx8fcqwsnrfkprjnhvu4g2x230un28zts 1600000000ujoe --append
  joed add-genesis-account joe1eywufmvkl4805stahfkdt0qetc3r0zvham5yu7 1600000000ujoe --append
  joed add-genesis-account joe1hc6qhk9w4y56khdvzesk8nmpccdvl43cumwwrw 1600000000ujoe --append
  joed add-genesis-account joe1n4a7szqm4gu0xegntwy245fjq8tlfh4vufnvza 1600000000ujoe --append
  joed add-genesis-account joe1vv2nm8tvpyx88r07hx5x4zyctpkztp6yerft4k 1600000000ujoe --append
  joed add-genesis-account joe1eqemvtjtfx43snexxya8lav4h3fpxzsrtleu9l 1600000000ujoe --append
  joed add-genesis-account joe1ex58ltuvruyew8849atkwqxr22nr8jww466yh6 4800000000ujoe --append
  joed add-genesis-account joe1e3r37jr5pwhfa8690psfmly7rjnh8pcwfhvamr 1600000000ujoe --append
  joed add-genesis-account joe1hqxv0m9xm6sf2dv3dm05hqc8dvz05jw99473ys 1600000000ujoe --append
  joed add-genesis-account joe17y0muw4d873p5j0h4lqr72vlf5m3jqe8thxcak 1600000000ujoe --append
  joed add-genesis-account joe10fdwe698fl5jfuq38lh6tgs0f0jp9uak7s6xcp 1600000000ujoe --append
  joed add-genesis-account joe1jzt962czzt3ruwsapec9fzmrm7kcj44236hjpl 1600000000ujoe --append
  joed add-genesis-account joe133t8m00w7llsslnf05zdhehharntly8d29ry7k 1600000000ujoe --append
  joed add-genesis-account joe1as0uxrvapmyuaearxq658rh2h2wx2a8hnxll9m 1600000000ujoe --append
  joed add-genesis-account joe1x7f3h3eqxl09mldk24getma7w9np79gf4a09j8 1600000000ujoe --append
  joed add-genesis-account joe19g5gmtv3wpa2rh76g9p8jccdh2r7zzc6w6ara6 1600000000ujoe --append
  joed add-genesis-account joe10d8ey734yhaqy7ewzhdv2nycnyjtxg8y82c406 1600000000ujoe --append
  joed add-genesis-account joe17nun6cg7a5xtu9fz2p8scxr7u9jmrf5v9q4q86 1600000000ujoe --append
  joed add-genesis-account joe1273772k35v4ye7pp3zdzlfwgph68fl69mcw62e 1600000000ujoe --append
  joed add-genesis-account joe1ku3slmc849vnthaa042a0kcaxgsffxc8hm3azn 1600000000ujoe --append
  joed add-genesis-account joe10ru4gphpyp8m4s6j3tdvnhzuz60hxnpyn0xugu 1600000000ujoe --append
  joed add-genesis-account joe1htr84ep3rr7vwkaldqqv7jvpgnd6kekeys8090 1600000000ujoe --append
  joed add-genesis-account joe1zqp246htc27mw56ea2ydvkg8ukx3q445xygadj 1600000000ujoe --append
  joed add-genesis-account joe19m7yjvyh7s0ffhpe9xlnvz42jhvsgjh6vc7m49 1600000000ujoe --append
  joed add-genesis-account joe1rusqjyx3k2j680rnm2kxae8zvka5s4t936m9p0 1600000000ujoe --append
  joed add-genesis-account joe1j06f2hxezhpafsdfmt37ghnf6lvz7p0q8w43pk 1600000000ujoe --append
  joed add-genesis-account joe10an66ger4za5ujj0dh6q527gnnjqsjv8avgakj 3200000000ujoe --append
  joed add-genesis-account joe18nl28k25u5qtwga7qzgd03ee8nqfzqypez9w2j 1600000000ujoe --append
  joed add-genesis-account joe18z748zp8fdu7f0xgmrq9my2cdjgf6hsctvwct0 1600000000ujoe --append
  joed add-genesis-account joe192s99ahncgl79axjvng4zupllcqy2rhyjunsxy 1600000000ujoe --append
  joed add-genesis-account joe17e7f9rh93jj9vvq38nzjygaf9tnq5dy85l6jjh 1600000000ujoe --append
  joed add-genesis-account joe1zfml2dnz3uhhgsgzwzyr7d8rp7u3mqlq79j8s2 1600000000ujoe --append
  joed add-genesis-account joe15xtc64z7h0tqxfmy5psa63fuml3j786lv8fx6a 1600000000ujoe --append
  joed add-genesis-account joe19zz54hh3gdylmavz9x0zjt3yppfscrhe0cuyz8 1600000000ujoe --append
  joed add-genesis-account joe1wvwv6n724yq5xs9z2lk03mspwruyxjyq3mh7yz 1600000000ujoe --append
  joed add-genesis-account joe17qrfgsyepv3mk2f29jkvf0y7q0fnyx7dskxu09 1600000000ujoe --append
  joed add-genesis-account joe1qztzc3pze6d3w5cpat4ysqhv46gxqf0hqtawd3 1600000000ujoe --append
  joed add-genesis-account joe1p80cpg464u48k7hr3a6myeu4s3ngr3t8cxvp5n 1600000000ujoe --append
  joed add-genesis-account joe1snamxl3mua7kzhfr6e2ycm45t2u4phfe994mhl 1600000000ujoe --append
  joed add-genesis-account joe1muyfqq9t9mjzdv05s2xx3g97frln8029j277rl 1600000000ujoe --append
  joed add-genesis-account joe1f9cz2nefyfr2c9wjvkyzkuddn7x5fjlhhy0n22 1600000000ujoe --append
  joed add-genesis-account joe19zyprrmutmly7yj8hxxqgvltawl3h0wa4v5rmn 1600000000ujoe --append
  joed add-genesis-account joe1u7x9rf8eq9z96u54fepu625r22gtkan2fkya5a 1600000000ujoe --append
  joed add-genesis-account joe1t7a7v6tcshez53nmm32urxpc83q42fy3yys68s 1600000000ujoe --append
  joed add-genesis-account joe1nvn4sfc3r2d69c7v0j9v7ak87xepz9q5yjljwt 1600000000ujoe --append
  joed add-genesis-account joe1958ex963n93nhmvcrtlwwtr0c9qmvewhdvuuef 1600000000ujoe --append
  joed add-genesis-account joe1ew45m3sakyes78v4xr4ua4jak8rewlan3jdw79 1600000000ujoe --append
  joed add-genesis-account joe1v3rh70yw6e0fyqmrscece6cpew89807z4m284q 1600000000ujoe --append
  joed add-genesis-account joe1mzkwyvyxg4jtczr6s7mjktfrr7ksfwmxdpjw8z 1600000000ujoe --append
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
  
  update_test_genesis '.app_state["distribution"]["params"]["community_tax"]="0.694200000000000000"' # 69.420%

  update_test_genesis '.app_state["staking"]["params"]["bond_denom"]="ujoe"'  
  update_test_genesis '.app_state["staking"]["params"]["min_commission_rate"]="0.040000000000000000"' # 3%   
  update_test_genesis '.app_state["staking"]["params"]["unbonding_time"]="57600s"' # 16 hours    
  update_test_genesis '.app_state["staking"]["params"]["max_validators"]="16"' # 16 hours    

  update_test_genesis '.app_state["mint"]["minter"]["inflation"]="0.690000000000000000"' # 69% inflation  

  update_test_genesis '.app_state["slashing"]["params"]["signed_blocks_window"]="42000"'
  update_test_genesis '.app_state["slashing"]["params"]["min_signed_per_window"]="0.420000000000000000"'
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
sed -i 's/address = ":8080"/address = ":8089"/g' ~/.joed/config/app.toml # bc ping.pub uses this

# # Start the node (remove the --pruning=nothing flag if historical queries are not needed)
joed start --pruning=nothing  --minimum-gas-prices=0ujoe --home $HOME/.joed/ #--mode validator     