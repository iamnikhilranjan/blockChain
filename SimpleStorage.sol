// SPDX-License-Identifier: MIT
pragma solidity 0.8.24 ; // this is the solidity version
//pragma solidity >=0.8.18 <0.9.0;  // used for defining a range

contract SimpleStorage {
    uint256 public myFavoriteNumber;

    // uint256[] favoriteNumbers; //[77, 78, 90]

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Person public pat = Person({favoriteNumber: 7, name: "pat"});
    // Person public nik = Person({favoriteNumber: 2, name: "nik"});

    //dynamic array 
    Person[] public listOfPeople;

    //siri - 4

    mapping(string => uint256) public nameToFavoriteNumber;
    
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    } 

    //view, pure
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }


    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // Person memory newPerson = Person(_favoriteNumber, _name);
        // listOfPeople.push(newPerson);

        listOfPeople.push( Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}