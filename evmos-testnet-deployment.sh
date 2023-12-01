#!/usr/bin/env sh

set -x #echo on

# make sure you have .env files 
source .env
export PRIVATE_KEY=$PRIVATE_KEY
export MNEMONIC=$MNEMONIC

# export heimdall id
export HEIMDALL_ID="${HEIMDALL_ID:-heimdall-1377}"

# root contracts are deployed on base chain
npm run truffle:migrate:evmos:testnet -- --reset --to 4
sleep 3