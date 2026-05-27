// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Importing standard audited templates from OpenZeppelin
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AcademicStablecoin is ERC20, Ownable {
    
    // The constructor runs only once when you first deploy the contract.
    // It sets the token name, the ticker symbol, and assigns you as the Admin (Owner).
    constructor() 
        ERC20("Boliche coin", "ABC") 
        Ownable(msg.sender) 
    {}

    /**
     * @dev Creates new tokens and assigns them to a specified address.
     * MINTING simulates a user depositing real fiat money into your company's bank.
     * We use the 'onlyOwner' modifier so only YOU (the central authority) can print money.
     */
    function mint(address to, uint256 amount) public onlyOwner {
        // Note: Ethereum handles tokens in 'Wei' (18 decimal places). 
        // So to mint 1 token, you actually input 1 followed by 18 zeros.
        _mint(to, amount);
    }

    /**
     * @dev Destroys tokens from the caller's wallet.
     * BURNING simulates a user redeeming their digital token for real fiat cash.
     * Any user can burn their own tokens when they want to cash out.
     */
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}