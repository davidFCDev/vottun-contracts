// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SecureContract {
    uint256 public sensitiveData;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Cambiar la visibilidad a 'internal' o 'private'
    function updateSensitiveData(uint256 _newData) internal {
        require(msg.sender == owner, "Only the owner can update sensitive data");
        sensitiveData = _newData;
    }

    // Proveer una función pública segura para actualizar los datos sensibles
    function updateData(uint256 _newData) public {
        require(msg.sender == owner, "Only the owner can update data");
        updateSensitiveData(_newData);
    }
}
