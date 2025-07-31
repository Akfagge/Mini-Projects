// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SecureNumber {

    address public owner;
    uint public myNumber;

    constructor () {
        owner = msg.sender;
    }

    function setNumber(uint _num) external {
        require(msg.sender == owner, "NOT OWNER");
        require(_num > 0, "NUMBER MUST BE GREATER THAN 0");

        myNumber = _num;
    }

    function getNumber() external view returns (uint) {
        return myNumber;
    }
}