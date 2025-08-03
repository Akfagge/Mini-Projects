// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract NumberListTracker {

    uint[] public numbers; // A Dynamic Array to store numbers

    function addNumber(uint _num) public {
        numbers.push(_num); // Add a number to the numbers array
    }

    function getNumber(uint _index) public view returns (uint) {
        require(_index < numbers.length, "Index out of bounds"); // Check if the index is valid
        return numbers[_index]; // Return the number at the specified index
    }

    function getAllNumber() public view returns (uint[] memory) {
        return numbers; // Return the entire numbers array
    }

    function calculateSum() public view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            sum += numbers[i]; // Add each number to the sum
        }
        return sum; // Return the sum of all numbers
    }
}