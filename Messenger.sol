// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;
contract Messenger{
    address public myAddress;
    string public  myString;
    uint public count;
    constructor(){
        myAddress=msg.sender;
    }
    function updateString(string memory myUpdatedString) public {
        if(myAddress==msg.sender){
            myString=myUpdatedString;
            count++;
        }
    }
}
