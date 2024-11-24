// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Boolean {
    bool public myBool;
    function setter (bool _myBool) public {
        myBool = _myBool;
    }
}