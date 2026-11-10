
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    uint256 private count;

    // Increase counter
    function increment() public {
        count++;
    }

    // Decrease counter
    function decrement() public {
        require(count > 0, "Counter cannot be negative");
        count--;
    }

    // Read current value
    function getCount() public view returns (uint256) {
        return count;
    }

    // Reset counter
    function reset() public {
        count = 0;
    }
}
