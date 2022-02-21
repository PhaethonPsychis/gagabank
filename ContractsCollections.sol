
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract preSale is Ownable {

  using SafeMath for uint256;
  // address payable public owner;
  event Registration(address, uint);

  constructor() {
  
  }



  function withdraw() public onlyOwner {
        payable(msg.sender).transfer(address(this).balance);        
    }


  receive() external payable {
    require(msg.value >= 0.1 * (1 ether), "not enough funds");
    emit Registration(msg.sender, msg.value);
  }
  // introduce fallback function
  fallback () external payable {
    require(msg.value >= 0.1 * (1 ether), "not enough funds");
  }

  function sendViaCall(address payable onlyOwner) public payable {
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
    (bool sent, bytes memory data) = onlyOwner.call{value: msg.value}("");
    require(sent, "Failed to send Ether");
    
  }
}
//------------------------------

pragma solidity 0.8.7;

contract VendingMachine {

    // Declare state variables of the contract
    address public owner;
    mapping (address => uint) public cupcakeBalances;

    // When 'VendingMachine' contract is deployed:
    // 1. set the deploying address as the owner of the contract
    // 2. set the deployed smart contract's cupcake balance to 100
    constructor() {
        owner = msg.sender;
        cupcakeBalances[address(this)] = 100;
    }

    // Allow the owner to increase the smart contract's cupcake balance
    function refill(uint amount) public {
        require(msg.sender == owner, "Only the owner can refill.");
        cupcakeBalances[address(this)] += amount;
    }

    // Allow anyone to purchase cupcakes
    function purchase(uint amount) public payable {
        require(msg.value >= amount * 1 ether, "You must pay at least 1 ETH per cupcake");
        require(cupcakeBalances[address(this)] >= amount, "Not enough cupcakes in stock to complete this purchase");
        cupcakeBalances[address(this)] -= amount;
        cupcakeBalances[msg.sender] += amount;
    }
}
