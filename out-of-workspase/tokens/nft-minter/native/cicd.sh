#!/bin/bash

# This script is for quick building & deploying of the program.
# It also serves as a reference for the commands used for building & deploying Solana programs.
# Run this bad boy with "bash cicd.sh" or "./cicd.sh"

cargo build-sbf
solana config set -ud
solana program deploy ./target/deploy/nft_minter_native.so
