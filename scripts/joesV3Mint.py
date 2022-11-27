# test here is some text


import os, json, random, time
current_dir = os.path.dirname(os.path.abspath(__file__))
pic_dir = os.path.join(current_dir, 'pics')
out_dir = os.path.join(current_dir, 'json_output')
pic_output = os.path.join(current_dir, 'pic_output')
os.makedirs(out_dir, exist_ok=True)
os.makedirs(pic_output, exist_ok=True)

traits = '''jacket, jail, jam, jaw, jealous, jelly, jest, jet, jewel, job, jockey, joint, joke, journal, joy, joystick, judge, judgment, judicial, jump, jungle, junior, jurisdiction, jury, just, justice, justify, jokester, jodhpurs, jointure, johnboat, jongleur, jonesing, jonquils, joltiest'''.split(', ')

schema = {
  "name": "Just Joe again",
  "description": "", # img_name
  "external_url": "https://www.youtube.com/@CosmosJoe",  
  "attributes": [],
}


# loop over all images, split at the dash - and get the first part. Set that as the description with .format
start = time.time()
for idx, img in enumerate(os.listdir(pic_dir), 1):
    img_name = img.split('-')[0]
    schema['description'] = img_name.strip().replace('.png', '')
    schema['attributes'] = [
        {"trait_type": "type-1", "value": random.choice(traits)},
        {"trait_type": "type-2", "value": random.choice(traits)}
    ] 

    # save as idx.json
    with open(os.path.join(out_dir, f'{idx}.json'), 'w') as f:
        json.dump(schema, f)

    # copy img to pic_output & rename to idx.png
    cmd = f"""cp '{os.path.join(pic_dir, img)}' '{os.path.join(pic_output, f"{idx}.png")}'"""
    os.system(cmd)
    print(cmd)

    # exit()

end = time.time()
print(f'Finished in {end-start} seconds')