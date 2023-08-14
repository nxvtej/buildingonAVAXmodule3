
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

        
    function redeem(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        // during game if some address is provided then tokens will be redeemed via this 
        _burn(msg.sender, amount);
    }

    function checkAccountBalance(address account) public view returns (uint256) {
        return balanceOf(account);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
