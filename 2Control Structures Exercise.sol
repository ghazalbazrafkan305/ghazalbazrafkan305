// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ControlStructures {
    error AfterHours(uint256 _time);
    string private salt = "ваша строка тут"; 
    // Smart Contract FizzBuzz
    function fizzBuzz(uint256 _number) public pure returns (string memory) {
        if (_number % 3 == 0 && _number % 5 == 0) {
            return "FizzBuzz";
        } else if (_number % 3 == 0) {
            return "Fizz";
        } else if (_number % 5 == 0) {
            return "Buzz";
        } else {
            return "Splat";
        }
    }
    // Do Not Disturb
    function doNotDisturb(uint256 _time) public pure returns (string memory) {
        if (_time >= 2400) {
            revert("1");
        } else if (_time >= 2200 || _time < 800) {
            revert AfterHours(_time);
        } else if (_time >= 1200 && _time <= 1259) {
            revert("At lunch!");
        } else if (_time >= 800 && _time <= 1199) {
            return "Morning!";
        } else if (_time >= 1300 && _time <= 1799) {
            return "Afternoon!";
        } else {
            return "Evening!";
        }
    }
}