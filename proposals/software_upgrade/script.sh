joed tx gov submit-proposal ./proposals/software_upgrade/v2_prop.json --from validator --keyring-backend test --chain-id joe-1 --yes --broadcast-mode block --node http://localhost:26657

ID="1"
joed tx gov vote $ID yes --from $KEY --keyring-backend test --chain-id joe-1 --yes --broadcast-mode block --node http://localhost:26657
joed q gov proposal $ID