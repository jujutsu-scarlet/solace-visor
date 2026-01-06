#!/usr/bin/env bash
set -e

# Solace Visor — Contract Deployment Script
# Deploys a contract to Base Sepolia or Base Mainnet using Foundry or Hardhat.

if [ -z "$PRIVATE_KEY" ]; then
  echo "❌ PRIVATE_KEY not set"
  exit 1
fi

if [ -z "$NETWORK" ]; then
  echo "❌ NETWORK not set (base-sepolia | base-mainnet)"
  exit 1
fi

case "$NETWORK" in
  base-sepolia)
    RPC_URL="https://sepolia.base.org"
    CHAIN_ID="84532"
    ;;
  base-mainnet)
    RPC_URL="https://mainnet.base.org"
    CHAIN_ID="8453"
    ;;
  *)
    echo "❌ Unknown network: $NETWORK"
    exit 1
    ;;
esac

CONTRACT="src/Contract.sol:MyContract"

echo "🚀 Deploying contract to $NETWORK"
echo "RPC URL: $RPC_URL"
echo "Chain ID: $CHAIN_ID"

forge create \
  --rpc-url "$RPC_URL" \
  --private-key "$PRIVATE_KEY" \
  --chain-id "$CHAIN_ID" \
  "$CONTRACT"

echo "✅ Deployment finished"
