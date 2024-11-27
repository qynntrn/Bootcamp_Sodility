// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract MyAddress {

    address public a;

    function updateAddress() public  {
        a = msg.sender;
    }
}