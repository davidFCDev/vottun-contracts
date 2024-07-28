// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Vulnerable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    // Función incorrecta
    function changeOwner(address _newOwner) internal onlyOwner {
        owner = _newOwner;
    }

    function updateOwner(address _newOwner) public {
        changeOwner(_newOwner);
    }
}
