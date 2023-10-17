<img width="540" alt="Screenshot 2023-10-16 at 10 41 09 PM" src="https://github.com/P4RASTOO/Challenge_21/assets/132952512/0a356ab8-e806-4c6e-872b-0a84158291cb">

# Challenge_21 Report
## Overview of the Analysis:
In this analysis we are tasked with creating a cryptocurrency, named KaseiCoin, and launching a crowdsale for people who are moving to Mars to convert their Earthling money to KaseiCoin. The code is implemented in Solidity and utilizes OpenZeppelin libraries for ERC-20 token creation and crowdsale functionality.

### Methods Used and Evaluation Evidence:
### KaseiCoin Contract: 
The KaseiCoin contract is created, inheriting functionality from OpenZeppelin's ERC20, ERC20Detailed, and ERC20Mintable contracts. These contracts provide the core functionality for creating an ERC-20 compliant token. The constructor initializes the token's details.  Below is a Screenshot of the successful compilation of the KaseiCoin contract:
<img width="1127" alt="Screenshot 2023-10-16 at 10 59 44 PM" src="https://github.com/P4RASTOO/Challenge_21/assets/132952512/c42dc0bc-ad7f-4191-adf4-a55bf368df43">






### KaseiCoinCrowdsale Contract:
The KaseiCoinCrowdsale contract is created, inheriting from OpenZeppelin's Crowdsale and MintedCrowdsale. This contract represents the crowdsale for KaseiCoin and is responsible for handling the sale of tokens. Below is a screenshot of the successful compilation of the KaseiCoinCrowdsale contract:
<img width="1127" alt="Screenshot 2023-10-16 at 11 00 20 PM" src="https://github.com/P4RASTOO/Challenge_21/assets/132952512/38fd44e2-728c-457e-8ed0-c55b20c3bcbf">






### KaseiCoinCrowdsaleDeployer Contract:
The KaseiCoinCrowdsaleDeployer contract is responsible for deploying the KaseiCoin and KaseiCoinCrowdsale contracts. It creates an instance of the token and the crowdsale, associates them, and mints tokens for the crowdsale. After that, it renounces its minter role to secure the token's integrity. Below is a screenshot of the successful compilation of the KaseiCoinCrowdsaleDeployer contract:
<img width="1127" alt="Screenshot 2023-10-16 at 11 01 05 PM" src="https://github.com/P4RASTOO/Challenge_21/assets/132952512/15fd7520-6194-4d90-81c8-4602591a3211">


### KaseiCoin Contract Demo
https://github.com/P4RASTOO/Challenge_21/assets/132952512/767fa02c-1dee-4e2a-9717-53f46f789036





### Summary:
The code sets up the infrastructure for creating a cryptocurrency called KaseiCoin and conducting a crowdsale for potential Mars colonists to obtain KaseiCoins in exchange for Earthling money. It uses OpenZeppelin libraries to ensure the ERC-20 compliance of KaseiCoin and the functionality of the crowdsale. The process involves initializing the token, the crowdsale, and the deployment of the contracts. It also handles the minter role for the crowdsale.
