// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract LearnStruct {
    // Declaring a structure
    struct Book {
        string name;
        string writter;
        uint id;
        bool available;
    }

    // Declaring a structure object
    Book book1;

    // Assigning values to the fields 
    // for the structure object book2
    Book book2 = Book(
        "Blockchain in Mboa",
        "Emengkeng Juslen",
        2,
        false
    );

    // Defining a function to set values
    // for structure object book1
    function setBookoneDetail() public {
        book1 = Book(
            "Host of blockchain in Mboa",
            "Diane",
            1,
            true
        );
    }

    // Define a function to print
    // book2
    function printBooktwoInfo() public view returns (
        string memory, string memory, uint, bool
    ){
        return (book2.name, book2.writter, book2.id, book2.available);
    }

    // Define a function to print 
    // book1 detail
    function printBookoneInfo() public view returns (
        string memory, uint
    ){
        return (book1.name, book1.id);
    }
}