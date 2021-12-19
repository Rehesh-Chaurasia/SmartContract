//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Token {
    string public name = "Hardhat";
    string public symbol = "HT";
    uint public totalSupply = 1000000;

    address public owner;

    mapping(address=>uint) balances;

    constructor() {
        balances[msg.sender]=totalSupply;
        owner=msg.sender;
    }
    function transfer(address to, uint amount) external{
        require(balances[msg.sender]>=amount, "No token available");
        balances[msg.sender]-=amount; 
        balances[to]+=amount;
    }
    function balanceOf(address account)external view returns(uint256){
        return balances[account];
    }                                                                                                                                                                                                                                                                                               
    }


