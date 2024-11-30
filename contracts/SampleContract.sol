// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract SampleContract {
    string public myS = "Hello World";

    function setString(string memory _s) public {
        myS = _s;
    }
}