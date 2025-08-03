//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract donations {

    struct person {
        string name;
        uint256 amount;
    }

    person[] public listOfPeoples;
    mapping(string => uint256) public nameToAmount;

    function addperson(string memory _name, uint256 _amount) public {
        listOfPeoples.push(person({name: _name, amount: _amount}));
        nameToAmount[_name] = _amount;
    }

}
