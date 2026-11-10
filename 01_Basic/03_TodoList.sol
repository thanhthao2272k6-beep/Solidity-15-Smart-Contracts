// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TodoList {
    struct Todo {
        string task;
        bool completed;
    }

    Todo[] public todos;

    function addTodo(string memory _task) public {
        todos.push(Todo(_task, false));
    }

    function completeTodo(uint256 _index) public {
        require(_index < todos.length, "Invalid index");
        todos[_index].completed = true;
    }

    function getTodo(uint256 _index)
        public
        view
        returns (string memory, bool)
    {
        require(_index < todos.length, "Invalid index");
        return (todos[_index].task, todos[_index].completed);
    }

    function getCount() public view returns (uint256) {
        return todos.length;
    }
}