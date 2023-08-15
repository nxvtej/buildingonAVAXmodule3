// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract DEGENTOKEN is ERC20 {
    address private contractOwner;

    constructor() ERC20("DEGEN TOKEN", "DGN") {
        contractOwner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == contractOwner, "Restricted to the contract owner only");
        _;
    }
    
    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

     function redeemTokens(uint256 amount) public {
        uint256 requiredAmount = amount * 10;
        require(balanceOf(msg.sender) >= requiredAmount, "Insufficient Amount");
        
        // Call the burn function to burn tokens
        _burn(msg.sender, requiredAmount);
        
        emit RedeemTokens(msg.sender, requiredAmount);
    }
    
    event RedeemTokens(address indexed user, uint256 amount);
   

    function checkAccountBalance(address account) public view returns (uint256) {
        return balanceOf(account);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
