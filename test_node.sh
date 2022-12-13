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
  # update_test_genesis '.app_state["gov"]["voting_params"]["voting_period"]="21600s"' # 6 hours
  update_test_genesis '.app_state["gov"]["voting_params"]["voting_period"]="10s"'
  
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

from_scratch

# Opens the RPC endpoint to outside connections
sed -i '/laddr = "tcp:\/\/127.0.0.1:26657"/c\laddr = "tcp:\/\/0.0.0.0:26657"' ~/.joed/config/config.toml
sed -i 's/cors_allowed_origins = \[\]/cors_allowed_origins = \["\*"\]/g' ~/.joed/config/config.toml
sed -i 's/address = ":8080"/address = ":8089"/g' ~/.joed/config/app.toml # bc ping.pub uses this

# # Start the node (remove the --pruning=nothing flag if historical queries are not needed)
joed start --pruning=nothing  --minimum-gas-prices=0ujoe --home $HOME/.joed/ #--mode validator     