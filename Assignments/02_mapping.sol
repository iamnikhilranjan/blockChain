/**
 Create a Solidity contract with a mapping named `addressToBalance`. 
 Implement functions to add and retrieve data from this mapping
 */

 //SPDX-License-Identifier: MIT
 pragma solidity ^0.8.19;

 contract balanceManager {
    mapping( address => uint256 ) public addressToBalance;

    // function to add or update balance for an address.
    function addBalance(uint256 amount) public {
        addressToBalance[msg.sender] += amount;
    }
    
    // function to retrieve the balance for a specific address.
    function getBalance(address _addr) public view returns (uint256) {
        return addressToBalance[_addr];
    }

 }