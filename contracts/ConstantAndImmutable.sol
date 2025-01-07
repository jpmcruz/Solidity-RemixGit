// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract ConstantsExample {
 address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
 uint public constant MY_UINT = 123;
 uint public immutable MY_CONSTANT;
 address public immutable MY_DEPLOYER;

constructor(uint _value) {
 MY_CONSTANT = _value;
 MY_DEPLOYER = msg.sender;
 }

function getMyAddress() public view returns (address) {
 return MY_ADDRESS;
 }

function getMyUint() public view returns (uint) {
 return MY_UINT;
 }

//  function updateConstant(uint _newValue) external {
 // This will result in a compilation error
    // MY_CONSTANT = _newValue;
//  }
}