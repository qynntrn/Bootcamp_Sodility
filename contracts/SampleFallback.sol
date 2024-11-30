// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract SampleFallback{
    uint public valueSent;
    string public functionCall;

    uint public myUnit;

    function setMyUnit (uint _u) public {
        myUnit = _u;
    }


    // have receive, fallback func + no calldata -> call receive func
    // have receive, fallback func + has calldata -> call fallback func
    // has fallback func + no calldata -> call fallback func
    // has receive func + no calldata -> call receive func
    // has receive func + has calldata -> require fallback func


    receive() external payable {
        valueSent = msg.value;
        functionCall = "recieve";
    }

    fallback() external payable {
        valueSent = msg.value;
        functionCall = "fallback";
    }

    // use calldata (the input field "0xb36cbc5f0000000000000000000000000000000000000000000000000000000000000001")
    // and click "transact" to call setMyUint function without click a "setMyUint" button
    
}