# joe

This chain is now closed and no future updates are planned. You should not use this code for any reason, Notional labs has clearly stated they do not like when people use open-source software they put together from other individuals work. But thats okay. So this code will never be used again, and I suggest you do the same. 47 is going to be better anyways.

## Attributions

JOE was a fork from eve, a project which was worked on by Reece, Jacob and Vuong @ Notional Labs. It started August of 2022 when Reece was at Craft Economy.

This attribution is written the way it is after being Jacob attacked me in a RAC-FM twitter space with ~60 listeners.

Jacob uploaded the initial chain from a copy of SimApp from the cosmos hub SDK. Then Reece fixed it all so it actually worked on SDK v46. This included fixing the home dir, adding the EVE wallet prefix, using eve params, setting up a test_node script, fixing the genesis, using pebbledb ~~(Something which Notional paid someone else a $2,000USD bounty to fix). **UPDATE**: It was claimed from someone who works at Notional now, but based of the [tweet here](https://twitter.com/gadikian/status/1552606469471621123?s=20) it is possible they did not work here then and were hired after? in which case this claim is still truthful.

During this time Jacob ensured to fix the README. I then added IBC and wasmd & e2e test with a CW721 contract. Then I fixed the protobuf files, and commands. I then did the tokenfactory v46 transfer from v45 from Confios fork. Jacob then created a testnet.yml for the v46 command testnet, which later did not work and I reverted. I then did version bumps and added globalfee from Gaia v8. Then Reece set the minimum commission to 10%, and fixed IBC to actually work for relaying between a local chain I ran. Nghuyen then fixed some proto things when it came to the scripts, which was from the gaia repository. Vuong then did work with the Native liquid staking which was from iqlusion's module. Everything after this was just version bumps. The future PRs for e2e after this I removed as there was no reason to use them.

You can find this proof here [https://github.com/eve-network/eve/commits/main](https://github.com/eve-network/eve/commits/main)

The chain was never launched, so I decided to copy-paste this work over to this repo and rename it from eve-network to joe bc JOE was vastly different from the original idea and a meme meant to last a month.

Notional did not want any attribution as Jacob had called me and cried to me "people are saying Notional is rugging JOE chain" during my thanksgiving dinner. I launched this chain and expected it to last maybe a month. I actually launched it, and ran it for fun. No commit history was provided since it was just a copy-paste, and at the time I was so new I did not know how to commit a repo's history. I was so new to git, so this was the easiest for me. *(I actually know how to use git now, but in August of last year I was very new to git & public repos which is not just a commit and push).

So thanks Notional for doing the v46 fork of the native liquid staking module. I would have happily removed this as it caused more issues than it solved.

---

**Update 2** [Someone asked about Craft Economy](https://twitter.com/jacobin7x/status/1633802070229671937?s=20) in relation to Notional. It never released since they (Notional) never finished the x/exp module. We were ready to launch ~6 months before the [microsoft NFT ban arrose](https://twitter.com/gadikian/status/1633809151725047808?s=20). Had the chain been done when we (myself, and 3 other craft developers) finished Craft v1, we would have launched before the microsoft issues came into affect. So between Febuary 2022 and up until Oct 2022, all our MC devs worked on the version 2 of craft waiting... waiting... waiting... And even today, the module still does not work / never actually worked.
