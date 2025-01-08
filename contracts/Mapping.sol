// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Mapping {
 // Mapping from address to uint
 mapping(address => uint) public myMap;
function get(address _addr) public view returns (uint) {
 // Mapping always returns a value.
 // If the value was never set, it will return the default value.
 return myMap[_addr];
 }
function set(address _addr, uint _i) public {
 // Update the value at this address
 myMap[_addr] = _i;
 }

function remove(address _addr) public {
 // Reset the value to the default value.
 delete myMap[_addr];
 }

 mapping(address => mapping(uint => bool)) public nested;
function getnested(address _addr1, uint _inested) public view returns (bool) {
 // You can get values from a nested mapping
 // even when it is not initialized
 return nested[_addr1][_inested];
 }
function setnested(address _addr1, uint _inested, bool _boo) public {
 nested[_addr1][_inested] = _boo;
 }
function removenested(address _addr1, uint _inested) public {
 delete nested[_addr1][_inested];
 }
}