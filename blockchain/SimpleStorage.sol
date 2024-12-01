// SPDX-License-Identifier: MIT

pragma solidity ^0.8.27;

contract SimpleStorage {
    // uint256 favouriteNumber = 5;
    // bool favouriteBool = false;
    // string favouriteString = "String";
    // int256 favouriteInt = -5;
    // address favouriteAddress  =  0x05feE1cAB2FD4192a78Fc362F3CAec48156e60a1;
    // bytes32 favouriteBytes = "cat";
   
    //this will get intialiazed to 0;
    uint256 favouriteNumber;
    bool favouriteboolean1;
     
    struct People{
        uint256 favouriteNumber;
        string name;
    }

    People[] public people;
    mapping (string => uint256) public nameToFavouriteNumber;
    People public person = People ({favouriteNumber:2,name: "Patric"});

    function store(uint256 _favouriteNumber) public {
        favouriteNumber=_favouriteNumber;
    }
   
    function retrieve() public view returns(uint256){
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber)public{
        people.push(People( _favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}