// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VulnerableContract {
    uint256 public sensitiveData;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Esta función debería ser 'internal' o 'private'
    function updateSensitiveData(uint256 _newData) public {
        require(msg.sender == owner, "Only the owner can update sensitive data");
        sensitiveData = _newData;
    }
}
