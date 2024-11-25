// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract String {
    string public myString = "hello world";
    bytes public myBytes;

    function setString (string memory s) public {
        myString = s;
    }

    // in sodility, dont have function to compare, they use keccak256 hash function to compare.
    function compare2string (string memory s) public view returns (bool) {
        return keccak256(abi.encode(myString)) == keccak256(abi.encode(s));
    }
}