pragma solidity ^0.4.4;

contract Lobby {
	mapping (address => uint) deposits;
	mapping (address => uint) pendingWithdrawals;    
	
	function withdraw() public {
        uint amount = pendingWithdrawals[msg.sender];
        // Remember to zero the pending refund before
        // sending to prevent re-entrancy attacks
        pendingWithdrawals[msg.sender] = 0;
        msg.sender.transfer(amount);
    }
}