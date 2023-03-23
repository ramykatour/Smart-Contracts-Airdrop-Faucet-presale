// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IERC20.sol";

contract Airdrop {
    
    IERC20 public token;
    uint256 public limit;
    mapping(address => bool) public hasReceived;

    constructor(IERC20 _token, uint256 _limit) {
        token = _token;
        limit = _limit;
    }

    function claim() external {
        require(!hasReceived[msg.sender], "You have already claimed your tokens");
        uint256 balance = token.balanceOf(address(this));
        require(balance >= limit, "Insufficient balance in the contract");
        token.transfer(msg.sender, limit);
        hasReceived[msg.sender] = true;
    }
    
}
