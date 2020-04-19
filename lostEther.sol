pragma solidity ^0.4.24;

contract Learning {

    constructor () public payable {
        // Deploy contract with 1000 wei for testing purpose
        require(msg.value == 1000);
    }

    function test() public returns (bool) {
        // Set minimum gas limit as 700 to send ether to 0x1
        transfer(0x0000000000000000000000000000000000000000, 1, 700);
        return true;
    }

    function transfer(address _account, uint _wei, uint _gas) private {
        require(_account.call.value(_wei).gas(_gas)());
    }
}
