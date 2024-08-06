// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract ModifierWorks {
    address public owner;
    
    // Define Modifier
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    // Here, name of the modifier will be added when
    // initializing the function
    function ownerCall() public onlyOwner{
        // Functionality is written here
    }
}