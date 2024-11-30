// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract SampleContract {
    string public myS = "Hello World";

    // payable modifier allow smart contract receive eth
    function setString(string memory _s) public payable   {
        // only save 1 eth in the contract and update msg
        if (msg.value == 1 ether){
            myS = _s;
        } else { // else it will pay the money again to the address of user
            payable(msg.sender).transfer(msg.value);
        }
       
    }
}