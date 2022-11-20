import os, json, bech32

current_dir = os.path.dirname(os.path.realpath(__file__))
airdrop = json.load(open(current_dir + '/token_airdrop.json'))

JOEAMT = 1_000 * 1_000_000 # ujoe

commands = []
final = {}

def joe_addr(stargaze_addr):
    new = "joe"
    data = bech32.bech32_decode(stargaze_addr)
    return bech32.bech32_encode(new, data[1])

for data in airdrop:
    # {'token_id': '3', 'address': 'stars1cnwp99x5m24ucfjkh8csn0nt86x4j0vjl099sg'}
    token_id = data['token_id']
    address = data['address']

    addr = joe_addr(address)

    if addr not in final:
        final[addr] = 0

    final[addr] += JOEAMT

# merge joe prices
for joe in final:
    commands.append(f"joed add-genesis-account {joe} {final[joe]}ujoe --append")

# save commands to values.sh
with open(current_dir + '/values.sh', 'w') as f:
    f.write('\n'.join(commands))