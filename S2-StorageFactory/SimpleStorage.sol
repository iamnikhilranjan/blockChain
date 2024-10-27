// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// import "./SimpleStorage.sol";
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

//    SimpleStorage[] public listOfSimpleStorageContracts;
   address[] public listOfSimpleStorageContracts;

   function createSimpleStorageContract() public {
      SimpleStorage newSimpleStorageContract = new SimpleStorage();
      listOfSimpleStorageContracts.push(address(newSimpleStorageContract));
   }

   function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
     // To interact with contract you always need 2 things
     // Address
     // ABI - Application Binary interface

     SimpleStorage(listOfSimpleStorageContracts[_simpleStorageIndex]).store(_newSimpleStorageNumber);
   }

   function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
      return SimpleStorage(listOfSimpleStorageContracts[_simpleStorageIndex]).retrieve();
   }
}