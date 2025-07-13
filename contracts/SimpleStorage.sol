// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract SimpleStorage{
    uint256  favouriteNumber;
    // People public person = People({name:"naman",favouriteNumber: 0});
    struct People{
        string name;
         uint256 favouriteNumber;
    }
    mapping(string => uint256 ) public nameToFavouriteNumber;

    People[] public person ;

    function addperson(string memory _name,uint256 _favouriteNumber) public{
          person.push(People(_name,_favouriteNumber));
          nameToFavouriteNumber[_name]=_favouriteNumber;
    }

    function store(uint256 _favouriteNumber) public{
       favouriteNumber=_favouriteNumber;
       retreive();
    }
    
    // view and pure function
    function retreive() public view returns(uint256){
        return favouriteNumber;
    }
}



