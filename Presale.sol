// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenSale {
    address public tokenAddress;
    address public owner;
    uint256 public price;
    uint256 public minPurchase;
    uint256 public maxCap;
    mapping(address => uint256) public balances;

    constructor(address _tokenAddress, uint256 _price, uint256 _minPurchase, uint256 _maxCap) {
        tokenAddress = _tokenAddress;
        owner = msg.sender;
        price = _price;
        minPurchase = _minPurchase;
        maxCap = _maxCap;
    }

    function buyTokens() public payable {
        require(msg.value >= minPurchase, "Minimum purchase amount not met");
        require(balances[msg.sender] + msg.value <= maxCap, "Purchase would exceed maximum cap");
        uint256 tokens = msg.value / price;
        require(IERC20(tokenAddress).balanceOf(address(this)) >= tokens, "Not enough tokens in the contract");
        IERC20(tokenAddress).transfer(msg.sender, tokens);
        balances[msg.sender] += msg.value;
    }

    function withdraw() public {
        require(msg.sender == owner, "Only the contract owner can withdraw funds");
        payable(msg.sender).transfer(address(this).balance);
    }

    function getTokenBalance() public view returns (uint256) {
        return IERC20(tokenAddress).balanceOf(address(this));
    }

    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
