# Snapshot #3 will award Joes with a non linear distribution with a whale cap of 10 Joes per wallet, and a maximum of 16k $JOE distributed per wallet. See diagram below for specifics.
# They will also get an NFT like snapshot 2 (50% minters)

import os, json, bech32

current_dir = os.path.dirname(os.path.realpath(__file__))
airdrop = json.load(open(current_dir + '/4pm_est_snapshot.json'))

JOEAMT = 1_600 # joe per NFT
WHALE_CAP = 16_000 # joe

commands = []
final = {}

def joe_addr(stargaze_addr):
    new = "joe"
    data = bech32.bech32_decode(stargaze_addr)
    return bech32.bech32_encode(new, data[1])

for data in airdrop:
    # {'token_id': '3', 'address': 'stars1cnwp99x5m24ucfjkh8csn0nt86x4j0vjl099sg'}
    # token_id = data['token_id']    
    addr = joe_addr(data['address'])

    if addr not in final:
        final[addr] = 0        
    
    final[addr] += JOEAMT

# print(final)

for addr in final:
    amount = final[addr]    
    if amount > WHALE_CAP:
        amount = WHALE_CAP
    
    commands.append(f"joed add-genesis-account {addr} {amount*1_000_000}ujoe --append")

# save commands to values.sh
with open(current_dir + '/airdrop3.sh', 'w') as f:
    f.write("# airdrop 3 (4pm est Nov 20)")
    f.write('\n'.join(commands))