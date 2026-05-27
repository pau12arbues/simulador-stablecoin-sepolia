# simulador-stablecoin-sepolia
Academic project: Deployment and simulation of a smart contract for a Stablecoin (ERC-20) on the Sepolia testnet using Solidity and OpenZeppelin.
Here is a highly professional, academic-grade `README.md` tailored specifically for your Boliche Coin project. This structure not only shows the technical steps but also proves to your professor that you understand the economic theory behind the code.

You can copy all the text below the line and paste it directly into your GitHub repository's `README.md` file. Remember to replace the `[YOUR_CONTRACT_ADDRESS_HERE]` placeholders with your actual Sepolia address before saving!

---

# 🪙 Boliche Coin (ABC) - Academic Stablecoin Project

## 📌 Project Overview

This repository contains the smart contract code and documentation for **Boliche Coin (ABC)**, an academic project simulating a fiat-collateralized (centralized) stablecoin deployed on the Ethereum Sepolia Testnet.

The purpose of this project is to practically demonstrate how real-world centralized stablecoins like USDT (Tether) and USDC function at the protocol level. By utilizing Solidity and the OpenZeppelin library, this project illustrates the technical architecture required to bridge traditional finance with Decentralized Finance (DeFi).

## 🏗️ Architecture & Theory

Unlike algorithmic or crypto-collateralized stablecoins, Boliche Coin operates on a **Centralized Fiat-Backed Model**.

* **The Peg:** The token is designed to represent a 1:1 parity with a physical fiat currency.
* **Centralization (Access Control):** The contract utilizes the `Ownable` pattern. Only the central entity (the contract deployer) has the authority to issue new tokens. This simulates the necessity of a central company verifying that real physical dollars have been deposited into a traditional bank before updating the digital ledger.


* 
**Academic Critique:** While highly efficient, this model introduces significant risks discussed in modern blockchain academia, primarily the necessity for continuous external audits and the risk of censorship (the central issuer's ability to freeze or manipulate funds).



## ⚙️ Technical Specifications

* 
**Network:** Ethereum Sepolia Testnet 


* 
**Language:** Solidity (^0.8.20) 


* 
**Token Standard:** ERC-20 


* 
**Security Library:** OpenZeppelin Contracts (`ERC20.sol`, `Ownable.sol`) 


* **Development Environment:** Remix IDE
* **Wallet Integration:** MetaMask

## 🔗 Live Deployment

* **Contract Address:** `[YOUR_CONTRACT_ADDRESS_HERE]`
* **Etherscan Explorer:** [View on Sepolia Etherscan](https://www.google.com/search?q=https://sepolia.etherscan.io/address/%5BYOUR_CONTRACT_ADDRESS_HERE%5D)

## 💻 Core Smart Contract Mechanics

The contract relies on two fundamental functions to control the token economy:

1. **`mint(address to, uint256 amount)` - Restricted Access**
* **Mechanism:** Creates new ABC tokens out of thin air.
* **Economic Simulation:** Represents a user depositing physical cash into the issuer's bank vault.
* **Security:** Protected by the `onlyOwner` modifier. The public cannot print their own money.


2. **`burn(uint256 amount)` - Public Access**
* **Mechanism:** Permanently destroys a specified amount of ABC tokens from the caller's wallet.
* **Economic Simulation:** Represents a user redeeming their digital tokens for physical cash. The tokens must be burned to maintain the 1:1 collateral ratio and prevent systemic under-collateralization.



## 🚀 How to Interact with Boliche Coin

If you wish to test the token mechanics on the Sepolia network, follow these steps:

1. **Setup:** Ensure you have the MetaMask extension installed and configured to the **Sepolia Testnet**.
2. **Import Token:** Open MetaMask, go to the "Tokens" tab, click "Import tokens", and paste the Contract Address provided above.
3. **Execution:** Go to [Remix IDE](https://www.google.com/search?q=https://remix.ethereum.org/), load the `AcademicStablecoin.sol` contract, and compile it. Under the "Deploy & Run Transactions" tab, paste the Contract Address into the `At Address` field to load the live interface.
4. **Testing:** You can now view the total supply, check balances, or execute the `burn` function (if you hold a balance of ABC).

## 📚 References & Bibliography

* 
**OpenZeppelin Documentation:** Standard ERC-20 implementation.


* 
**Ethereum.org:** Technical guidelines on Stablecoins and tokenization.


* 
**Tether (USDT) Whitepaper:** Theoretical foundation for the fiat-collateralized model.
