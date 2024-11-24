// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract Unit{
    uint256 public myInt256;
    uint8 public  myInt8 = 250;
    int public  myInt = -10;

    function setInt256(uint256 i) public {
        myInt256 = i;
    }

    function incInt8() public {
        myInt8++;
    }

    function incmyInt() public {
        myInt++;
    }

    function decmyInt256() public {
        myInt256--;
    }
    
}
