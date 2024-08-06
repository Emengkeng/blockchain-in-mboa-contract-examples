// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract constructorExample {

    // Declaring state variable
    string str;

    // Creating a construtor 
    // to set value of 'str'
    constructor() public {
        str = "BuildBear";
    }

    // Defining view function to
    // calculate product and sum
    // of 2 numbers
    function getValue() public view returns(
        string memory
    ){
        return str;
    }
}