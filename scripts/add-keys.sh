#!/bin/bash

TEST_KEY_AMOUNT=3
KEY=test
KEYRING="test"

rm mnemonics.txt
touch mnemonics.txt

for i in $(seq 0 $TEST_KEY_AMOUNT)
do  
    KEY_NAME=$(printf "%s%d" "$KEY" "$i")
    echo 'y' | joed keys delete $KEY_NAME --keyring-backend $KEYRING
    FILE=$(printf "build/node%d/joed/key_seed.json" "$i")
    SECRET=$(sudo jq -r ".secret" $FILE)
    echo $SECRET | joed keys add $KEY_NAME --recover --keyring-backend $KEYRING
    echo "SECRET='$SECRET'" >> mnemonics.txt
    echo "" >> mnemonics.txt
done