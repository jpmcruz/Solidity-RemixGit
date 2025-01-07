// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "@openzeppelin/contracts/utils/Strings.sol";

contract Variables {
 string public text = "Hello";
 uint public num = 123;

    function doSomething() public {
        uint i = 456;
        uint timestamp = block.timestamp;
        address sender = msg.sender;
     //   text = sender.toString();
        text = "World";
        num = timestamp;
    }
}
