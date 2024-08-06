// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FallbackFunctions {

    event FallbackCall(uint amount, address sender);
    // When user is not able to send ether 
    // by payable function properly....
    /** 
    * If you send the ether directly from your wallet to the contract
    * the fallback runs, so we put the transfer balance
    * function in the fallback function to 
    * to re-route the user to the right path.
    **/

    function transferBal() public payable {};
    fallback() external payable { 
        transferBal();
        emit FallbackCall(msg.value, msg.sender);
    }
}