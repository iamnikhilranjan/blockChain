/*
Create a smart contract that can store and view a list of animals. 
Add manually three (3) animals and give the possibility to the user 
to manually add an indefinite number of animals into the smart contract.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract test_01 {

    // struct animal {
    //     string name;
    //     uint number;
    // }

    // animal[] public listOfAnimals;

    string[] public animals;
    
    //constructor to initialize this array with three animals
    constructor(){
    animals.push("Tiger");
    animals.push("Lion");
    animals.push("Horse");
    }

    //function to add a new animal to the list 
    function addAnimal(string memory _animal) public {
        animals.push(_animal);
    }

    //function to get total number of animal to the list 
    function getAnimalCount() public view returns (uint) {
        return animals.length;
    }

    //function to reterive an animal by index
    function getAnimal(uint _index) public view returns (string memory) {
        require(_index < animals.length, "Index out of bounds");
        return animals[_index];
    }

}