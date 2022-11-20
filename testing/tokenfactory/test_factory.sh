SUBDENOM="reece1"
COIN_NAME="factory/eve1hj5fveer5cjtn4wd6wstzugjfdxzl0xpysfwwn/$SUBDENOM"
TX_PARAMS="--from eve1 --chain-id eve-t1 --yes --broadcast-mode sync --keyring-backend test"


SEQ=$(joed q account eve1hj5fveer5cjtn4wd6wstzugjfdxzl0xpysfwwn --output json | jq -r '.sequence')

# Requires 1eve to make.
joed tx tokenfactory create-denom $SUBDENOM $TX_PARAMS --sequence $SEQ

joed q tokenfactory denom-authority-metadata $COIN_NAME

joed tx tokenfactory mint 100$COIN_NAME $TX_PARAMS --sequence $((SEQ+1))


joed q bank balances eve1hj5fveer5cjtn4wd6wstzugjfdxzl0xpysfwwn --denom $COIN_NAME

joed tx tokenfactory burn 5$COIN_NAME $TX_PARAMS --sequence $((SEQ+2))

# joed tx tokenfactory change-admin $COIN_NAME eve1hj5fveer5cjtn4wd6wstzugjfdxzl0xpysfwwn $TX_PARAMS

joed q tokenfactory denoms-from-creator eve1hj5fveer5cjtn4wd6wstzugjfdxzl0xpysfwwn 