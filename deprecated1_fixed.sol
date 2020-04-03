/*
 * @source: https://consensys.github.io/smart-contract-best-practices/recommendations/#avoid-using-txorigin
 * @author: Consensys Diligence
 * Modified by Gerhard Wagner
 */

pragma solidity 0.6.4;

contract MyContract {

    address owner;

    function _MyContract() public {
        owner = msg.sender;
    }

    function sendTo(address payable receiver, uint amount) public {
      require(msg.sender == owner);
      receiver.transfer(amount);
    }

}
