FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install curl -y
RUN sh -c "$(curl -sSfL https://release.solana.com/stable/install)"
ENV PATH="/root/.local/share/solana/install/active_release/bin:${PATH}"
RUN solana config set --url https://api.devnet.solana.com
CMD solana-keygen new --no-bip39-passphrase --outfile ~/.config/solana/devnet.json;echo 'airdrop 5 sol';solana airdrop 5 `solana-keygen pubkey ~/.config/solana/devnet.json`;echo 'current balance';solana balance `solana-keygen pubkey ~/.config/solana/devnet.json`;echo 'print pubkey';solana-keygen pubkey ~/.config/solana/devnet.json;echo 'solana wallet privte key'; echo `cat ~/.config/solana/devnet.json`