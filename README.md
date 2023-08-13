# buildingonAVAXmodule3

# Degen Gaming Token (DGT) Smart Contract

Welcome to the Degen Gaming Token (DGT) smart contract repository! This Solidity smart contract implements an ERC20 token on the Avalanche network for the Degen Gaming platform.
The contract allows minting, transferring, redeeming, checking balances, and burning of tokens.

## Features

- Minting new tokens: Only the owner can mint new tokens and distribute them to players as rewards.
- Transferring tokens: Players can transfer their tokens to others using standard ERC20 transfer functionality.
- Redeeming tokens: Players can redeem their tokens for items in the in-game store.
- Checking token balance: Players can check their token balance at any time using the ERC20 balanceOf function.
- Burning tokens: Anyone can burn their own tokens that are no longer needed.

## Prerequisites

To interact with the smart contract, you'll need the following:

- Remix IDE (with injected iWETH and MetaMask set to the local network with AVAX)
- Avalanche network account and AVAX tokens for testing
- Snowtrace to track these transactions.
- 
## Getting Started

1. Open the Remix IDE and create a new Solidity file.

2. Copy and paste the [DegenGamingToken.sol](contracts/DegenGamingToken.sol) code into the file.

3. Compile the smart contract in the Remix IDE.

4. Deploy the smart contract using Remix's deployment feature. Make sure to choose the local network with AVAX and connect MetaMask to it.

5. Once deployed, you can interact with the contract functions directly through the Remix interface.

## Customization

You can customize the contract further to meet your specific requirements for the Degen Gaming platform. Implement the logic for the `redeem` function to handle in-game item redemption.

## License

This project is licensed under the MIT License 

---
Navdeep 
-Metacrafters Student
