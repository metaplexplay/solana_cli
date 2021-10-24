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

copy the entire string include '[' and ']' into a json file, you should then be able to import in other wallets