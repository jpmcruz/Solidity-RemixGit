 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract PaymentContract {
address payable public recipient;
uint public amount;
constructor(address payable _recipient, uint _amount) {
 recipient = _recipient;
 amount = _amount;
 }
modifier onlyRecipient() {
 require(msg.sender == recipient, "Not recipient");
 _;
 }
function releasePayment() public onlyRecipient {
 recipient.transfer(amount);
 }
}