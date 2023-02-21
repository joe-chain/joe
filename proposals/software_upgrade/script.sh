
FLAGS="--from joe1 --keyring-backend test --chain-id local-1 --yes --broadcast-mode block --home $HOME/.joe1/ --node http://localhost:26657"

joed tx gov submit-legacy-proposal software-upgrade v9 --title="upgrade" --description="joergade" --upgrade-height 5000 --deposit 0ujoe --no-validate=true $FLAGS
ID=1 && joed tx gov deposit $ID 1000000ujoe $FLAGS
joed tx gov vote $ID no $FLAGS



joed q gov proposal $ID --node http://localhost:26657
joed q gov votes $ID