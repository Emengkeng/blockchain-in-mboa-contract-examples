// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FallbackFunctions {

    event FallbackCall(uint amount, address sender);
    // When user is not able to send ether 
    // by payable function properly....
    /** 
    * Here, we can only transfer ethers to the receive function, it is not
    * going to accept the msg.data or Calldata.
    * To send calldata also, we have to initialize 
    * the fallback fucntion
    **/

    function transferBal() public payable {}
    fallback() external payable { 
        transferBal();
        emit FallbackCall(msg.value, msg.sender);
    }
}