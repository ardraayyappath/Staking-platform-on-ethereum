//SPDX-License-Identifier: MIT
pragma solidity 0.6.8;

// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/access/Ownable.sol";

contract DefiToken is ERC20, Ownable {
    
    /**
     * @notice The constructor for creating the DeFiXy token
     * @param name The name of the token
     * @param symbol The symbol for the token
     * @param decimals The decimals for the token
     * @param totalSupply The max number of tokens in existence
    */
    constructor(string memory name, string memory symbol,uint8 decimals, uint256 totalSupply) public ERC20(name, symbol) {
        
        totalSupply = totalSupply * (10 ** uint256(decimals));
        
        if (totalSupply > 0) {
            _mint(owner(), totalSupply);
        }
    }

}