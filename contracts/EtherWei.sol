pragma solidity ^0.8.17;
contract EtherUnits {
 uint public oneWei = 1 wei; // Conjuring a variable with 1 Wei
 bool public isOneWei = 1 wei == 1; // Probing if 1 Wei holds the power of 1
uint public oneEther = 1 ether; // Summoning a variable with 1 Ether
 bool public isOneEther = 1 ether == 1e18; // Unveiling if 1 Ether channels the energy of 10¹⁸ Wei

  function convertWeiToEther(uint weiAmount) public pure returns (uint)
{
 return weiAmount / 1 ether; // Transmuting Wei into Ether
 }
 
 function convertEtherToWei(uint etherAmount) public pure returns (uint) {
 return etherAmount * 1 ether; // Transmuting Ether into Wei
 }
}