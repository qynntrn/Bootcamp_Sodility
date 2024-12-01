// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract SendWithdrawMoney {
    uint public balanceReceived;
    function deposit() public payable  {
        balanceReceived += msg.value;
    }

    function getContractBanlence() public view returns (uint) {
        return address(this).balance;
    }

    function withdrawAll() public {
        address payable to = payable(msg.sender);
        to.transfer(getContractBanlence());
    }

    function withdraw2Address(address payable _to) public {
        _to.transfer(getContractBanlence());
    }
}