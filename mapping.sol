// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract PhoneBook {
    mapping(address => string) public phoneNumbers;

    function setPhoneNumber(string calldata _phone) external {
        phoneNumbers[msg.sender] = _phone;
    }

    function getPhoneNumber(address _user) external view returns (string memory) {
        return phoneNumbers[_user];
    }
}