joed tx gov submit-proposal ./proposals/software_upgrade/v2_prop.json --from validator --keyring-backend test --chain-id joe-1 --yes --broadcast-mode block --node http://localhost:26657

ID="1"
joed tx gov vote $ID yes --from $KEY --keyring-backend test --chain-id joe-1 --yes --broadcast-mode block --node http://localhost:26657
joed q gov proposal $ID


# mainnet
joed tx gov submit-legacy-proposal software-upgrade v2 --title="Joe v2 software upgrade" --description="Just doing some Joegrades" --upgrade-height 350000 --from validator --keyring-backend os --chain-id joe-1 --yes --broadcast-mode block --no-validate=true --node https://rpc.justjoe.app:443
joed tx gov vote 6 yes --from validator --keyring-backend os --chain-id joe-1 --yes --broadcast-mode block --node https://rpc.justjoe.app:443
joed q gov proposal 6
joed q gov votes 6