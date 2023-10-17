// SPDX-License-Identifier: MIT
pragma solidity ^0.5.7;


// Have the KaseiCoinCrowdsale contract inherit the following OpenZeppelin:
// * Crowdsale
// * MintedCrowdsale
import "./KaseiCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";


// Define the KaseiCoinCrowdsale contract and specify its inheritance from OpenZeppelin contracts.
contract KaseiCoinCrowdsale is Crowdsale, MintedCrowdsale {
    // Constructor to initialize the crowdsale with required parameters.
    constructor(
        uint256 rate, // Token rate in TKNbits.
        address payable wallet, // Address to receive Ether raised.
        KaseiCoin token // KaseiCoin token used in the crowdsale.
    ) public
        Crowdsale(rate, wallet, token)
    {
        // The constructor is intentionally left empty.
    }
}

// Define the KaseiCoinCrowdsaleDeployer contract to deploy the crowdsale and token.
contract KaseiCoinCrowdsaleDeployer {
    // Public address variable for the KaseiCoin token.
    address public kasei_token_address;
    
    // Public address variable for the KaseiCoin crowdsale.
    address public kasei_crowdsale_address;

    // Constructor to deploy the token, crowdsale, and set permissions.
    constructor(
        string memory name,
        string memory symbol,
        address payable wallet // Address to receive Ether from the sale
    ) public {   
        // Create a new instance of the KaseiCoin token contract.
        KaseiCoin token = new KaseiCoin(name, symbol, 0);
        
        // Assign the token contract's address to the kasei_token_address variable.
        kasei_token_address = address(token);

        // Create a new instance of the KaseiCoinCrowdsale contract.
        KaseiCoinCrowdsale kasei_crowdsale = new KaseiCoinCrowdsale(1, wallet, token);
        
        // Assign the KaseiCoinCrowdsale contract's address to kasei_crowdsale_address.
        kasei_crowdsale_address = address(kasei_crowdsale);

        // Set the KaseiCoinCrowdsale contract as a minter for the token.
        token.addMinter(kasei_crowdsale_address);

        // Have the KaseiCoinCrowdsaleDeployer renounce its minter role.
        token.renounceMinter();
    }
}