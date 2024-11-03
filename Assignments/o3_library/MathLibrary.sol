// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

library MathLibrary {
    function sum(uint256 num1, uint256 num2) internal view returns(uint256) {
        uint256 result = num1 + num2;
        return result;
    }
}