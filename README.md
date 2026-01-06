# Solace Visor (Built for Base)

Solace Visor is a small, read-only tool built to explore and verify the Base Sepolia network. It helps developers confirm network configuration, inspect balances, and validate deployed contracts in a safe, non-invasive manner.

---

## Purpose of This Repository

Solace Visor is designed to be a lightweight validation tool. It's useful for:
- Verifying that you're connected to Base Sepolia  
- Checking balances and inspecting addresses  
- Verifying contract deployments via Basescan  
- Ensuring network consistency without making changes  

All actions performed are strictly read-only.

---

## Repository Structure

- **app/solace-visor.ts**  
  The main script that connects to Coinbase Wallet and queries Base Sepolia for data.

- **contracts/**  
  Solidity contracts deployed to Base Sepolia for testnet validation:
  - `contract.sol`  
  - `storage.sol`   

- **config/base.networks.json**  
  Network configuration for Base, including RPC URLs and chainIds.

- **scripts/sample-addresses.json**  
  A set of example addresses used for repeatable testing.

- **scripts/deploy-contracts.sh**  
  A script to help deploy contracts to Base Sepolia.

- **logs/debug.log**  
  Log file capturing the results of previous tests.

- **package.json**  
  The dependency manifest, linking this project to required libraries.

- **README.md**  
  The documentation file you're currently reading.

---

## Network Details

Base Sepolia  
chainId (decimal): 84532  
Explorer: https://sepolia.basescan.org  

---

## How It Works

Solace Visor connects to Coinbase Wallet using the Coinbase Wallet SDK and interacts with Base Sepolia via viem. It retrieves information such as wallet balances, transaction counts, block data, and gas usage. It then provides explorer links for verification, ensuring transparency in every operation.

No transactions are signed or broadcast during usage.

---

## Tooling and Libraries

This project depends on:
- Coinbase Wallet SDK for wallet connection  
- viem for RPC communication  
- Base and Coinbase GitHub repositories for network-specific utilities  

---

## License

MIT License  
Copyright (c) 2025 YOUR_NAME

---

## Author

GitHub: https://github.com/jujutsu-scarlet

Email: jujutsu.scarlet.0d@icloud.com

Public contact(x): https://x.com/donkoka58

---

## Testnet Deployment (Base Sepolia)

These contracts have been deployed to Base Sepolia as part of pre-production validation.

Network: Base Sepolia  
chainId (decimal): 84532  
Explorer: https://sepolia.basescan.org  

Contract contract.sol address:  
0x945489f3b28e3C68273Fd72064eA783BDd82998d

Deployment and verification:
- https://sepolia.basescan.org/address/0x945489f3b28e3C68273Fd72064eA783BDd82998d
- https://sepolia.basescan.org/0x945489f3b28e3C68273Fd72064eA783BDd82998d/0#code  

Contract storage.sol  address:  
0x96a2385Ce12e26e64a07e2B9aE6A811950ac4bA2

Deployment and verification:
- https://sepolia.basescan.org/address/0x96a2385Ce12e26e64a07e2B9aE6A811950ac4bA2
- https://sepolia.basescan.org/0x96a2385Ce12e26e64a07e2B9aE6A811950ac4bA2/0#code  

These testnet deployments help ensure that Base tooling and network features work as expected.
