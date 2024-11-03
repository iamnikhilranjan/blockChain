// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

/*
 1. Create a simple library called `MathLibrary` that contains a function 
 `sum` to add two `uint256` numbers. Then create a function 
 `calculateSum` inside the `fundMe` contract that uses the 
 `MathLibrary` function.
*/

import {MathLibrary} from "./MathLibrary.sol";

contract FundMe {

    using MathLibrary for uint256;

    function calculateSum(uint256 num1, uint256 num2) public pure returns (uint256) {
        return MathLibrary.sum(num1, num2);
    }
}

