# Submit a change from default fees (none) to some fee
joed tx gov submit-legacy-proposal param-change testing/gov/fee_param.json --from eve1 --keyring-backend test --chain-id eve-t1 --yes
joed tx gov vote 1 yes --from eve1 --keyring-backend test --chain-id eve-t1 --yes

joed q globalfee minimum-gas-prices --output json

joed tx bank send eve1 eve1hj5fveer5cjtn4wd6wstzugjfdxzl0xpysfwwn 1ujoe --keyring-backend test --chain-id eve-t1 --gas 100000 --fees 250ujoe --yes
joed tx bank send eve1 eve1hj5fveer5cjtn4wd6wstzugjfdxzl0xpysfwwn 1ujoe --keyring-backend test --chain-id eve-t1 --gas 200000 --fees 499ujoe --yes # fail, should be 500


# set fee to 0, run all these of these at the same time.
SEQ=$(joed q account eve1hj5fveer5cjtn4wd6wstzugjfdxzl0xpysfwwn --output json | jq -r '.sequence')
LAST_PROP_ID=$(joed q gov proposals --output json | jq -r '.proposals | last | .id')
joed tx gov submit-legacy-proposal param-change testing/gov/lower_min_fee.json --from eve1 --keyring-backend test --chain-id eve-t1 --yes --fees 500ujoe --sequence $SEQ
joed tx gov vote $((LAST_PROP_ID+1)) yes --from eve1 --keyring-backend test --chain-id eve-t1 --yes --fees 500ujoe --sequence $((SEQ+1))


joed q globalfee minimum-gas-prices --output json

joed tx bank send eve1 eve1hj5fveer5cjtn4wd6wstzugjfdxzl0xpysfwwn 1ujoe --keyring-backend test --chain-id eve-t1 --gas 100000 --fees 0ujoe --yes
joed tx bank send eve1 eve1hj5fveer5cjtn4wd6wstzugjfdxzl0xpysfwwn 1ujoe --keyring-backend test --chain-id eve-t1 --gas 200000 --fees 1ujoe --yes