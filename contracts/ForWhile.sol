// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Loop {
 function loop() public {
 // for loop
 for (uint i = 0; i < 10; i++) {
 if (i == 3) {
 // Skip to next iteration with continue
 continue;
 }
 if (i == 5) {
 // Exit loop with break
 break;
 }
 // Code block executed for each iteration
 }
 }

 function whileloop() public {
 // while loop
 uint j;
 while (j < 10) {
 j++;
 // Code block executed for each iteration
 }
 }
}