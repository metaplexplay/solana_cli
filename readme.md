This is a repo to prepare a solana cli env on ubuntu. 

The default command is to generate a wallet (no passphrase) to be used by program

to use
1. docker build -t simple_solana_cli .
2. docker run --rm simple_solana_cli

in the result, you shall see
> print pubkey
> 9HGf3WCr7CZCKcMDjYyuwrZAX33yajU8cupiBsvLiTwP

your public key is ready on the above line

Next you shall see 
> current balance
> 5 SOL

You are right, 5 sol is airdrop to your wallet to start with

Next you will see 
> solana wallet privte key
> [...]

copy the entire string include '[' and ']' into a file named id.json, you should then be able to import in other wallets; and be used in image upload as creator

### helpful command
solana balance
    solana balance <pubkey>

Note: if pubkey not provided, read from ~/.config/solana/id.json

solana airdrop <amount, max 5 in devnet> <pubkey>
    solana airdrop 5

to repeat airdrop
    for i in 1 2 3 4 5; solana airdrop 5; done;

