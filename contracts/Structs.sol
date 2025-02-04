// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "contracts/StructDeclaration.sol";

contract Todos {
//  struct Todo {s
//  string text;
//  bool completed;
//  }
Todo[] public todos;

function create(string calldata _text) public {
 todos.push(Todo(_text, false));
 todos.push(Todo({text: _text, completed: false}));
 Todo memory todo;
 todo.text = _text;
 todos.push(todo);
 }
function get(uint _index) public view returns (string memory text, bool completed, string memory extra) {
 Todo storage todo = todos[_index];
 return (todo.text, todo.completed, "extra text");
 }
function updateText(uint _index, string calldata _text) public {
 Todo storage todo = todos[_index];
 todo.text = _text;
 }
function toggleCompleted(uint _index) public {
 Todo storage todo = todos[_index];
 todo.completed = !todo.completed;
 }

 function getLength() public view returns (uint) {
 return todos.length;
 }
}