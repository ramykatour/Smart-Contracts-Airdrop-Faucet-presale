// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    function transfer(address recipient, uint256 amount) external returns (bool);
}

contract TokenFaucet {
    address public tokenAddress;
    uint256 public limitPerDay;
    mapping(address => uint256) public lastClaimed;
    
    constructor(address _tokenAddress, uint256 _limitPerDay) {
        tokenAddress = _tokenAddress;
        limitPerDay = _limitPerDay;
    }
    
    function claim() external {
        require(lastClaimed[msg.sender] + 1 days <= block.timestamp, "You can only claim once per day.");
        require(IERC20(tokenAddress).transfer(msg.sender, 1 ether), "Token transfer failed.");
        lastClaimed[msg.sender] = block.timestamp;
    }
}
