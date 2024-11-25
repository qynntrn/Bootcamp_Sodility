// learn version 0.7.5 and unchecked function
// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;


contract Unit{
    uint256 public myInt256;
    uint8 public  myInt8 = 2**2;

    function setInt256(uint256 i) public {
        myInt256 = i;
    }

    function incInt8() public {

        myInt8++;
    }


    function decmyInt256() public {
        // unchecked {
        //     myInt256--;
        // }
        myInt256--;
    }
    
}
