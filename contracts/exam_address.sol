// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract MyAddress {
    address public a;

    function setAddress(address _a) public  {
        a = _a;
    }

    function getBanlance() public view returns (uint) {
        return a.balance;
    }
}