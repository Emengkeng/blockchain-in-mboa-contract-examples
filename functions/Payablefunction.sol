// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract PayableFunctions {

    // Defining view function to
    // calculate product and sum
    // of 2 numbers
    function getResult() public pure returns(
        uint product, uint sum
    ){
        uint num1 = 2;
        uint num2 = 4;
        product = num1 * num2;
        sum = num1 + num2;
    }
}