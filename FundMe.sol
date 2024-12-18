// Get fund from users 
// Withdraw funds 
// Set a minimum funding value in usd 

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {
    
    // uint256 public myValue = 1;
    uint256 public minimumUsd = 5e18;

    function fund() public payable {
        // Allow users to send $
        // Have a minimum $ snet 
        // 1. How do we send ETH to this contract ?
        // myValue = myValue + 2;
        require(msg.value > minimumUsd, "didn't send enough eth"); // 1e18 = 1 ETH = 1 * 10 ** 18 Gwei
        
        // What is a revert ?
        // Undo any actions that have been done, and send the remaining gas back

    }

    // function withdraw() public {}
    function getPrice() public view returns(uint256) {
        // Address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // ABI
        AggregatorV3Interface pricefeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        ( ,int256 price,,,) = pricefeed.latestRoundData();
        // Price od ETH in terms of USD
        // 200.00000000
        return uint256(price * 1e10);
    }
    function getConversionRate(uint256 ethAmount) public view returns(uint256){
        // 1 ETH ?
        // 2000_000000000000000000
        uint256 ethPrice = getPrice();
        // (2000_000000000000000000 * 1_000000000000000000) / 1e18
        // $2000 = 1 ETH
        uint256 ethAmountInUsd = (ethPrice + ethAmount) / 1e18 ;
        return  ethAmountInUsd;
    }

    function getVersion() public view returns(uint256) {
        return  AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }
}