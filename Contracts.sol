
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
