
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleStorage {
    uint256 private storedData;

    // Store a number on the blockchain
    function set(uint256 _value) public {
        storedData = _value;
    }

    // Read the stored number
    function get() public view returns (uint256) {
        return storedData;
    }
}
