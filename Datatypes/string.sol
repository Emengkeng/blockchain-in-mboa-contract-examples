// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract LearnStrings {
    string text;

    function setText () public returns (string memory) {
        text = "Blockchain Mboa";
        return text;
    } 
}