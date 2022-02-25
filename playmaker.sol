// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

// This contract is a type of aasurance contract designed to operate in the field of Libertarian Social Engineering.
// to allow for the provision of certain classes of public goods.
// 
// It establishes a crowdfunding process with minimal restrictions. 
// @owner sets a price to sell an upcoming product
// @owner may or may not set the max number of sponsors this campaign accepts. There is no minimum thershold
// @owner may or may not set a termination date for this contract
// The contract receives contributions from sponsors and anounces the events on the network
// @owner stores the addresses on a databse off chain
// @owner provides a process to use the list for the purchase of digital goods

contract preSale {

  // using SafeMath for uint256;
  // address payable public owner;
  
  address public owner;
  uint price;
  string dapp_name;
  uint maxSponsors;

  event registrationEvent(address sponsor, uint amount, bool success);
  event RegistrationPrice( address owner, uint price);

  constructor() payable {
      owner = msg.sender;
      uint price;
      uint maxSponsors;
  
  }

    modifier onlyOwner() {
            require(msg.sender == owner, "Not owner");
            // Underscore is a special character only used inside
        // a function modifier and it tells Solidity to
        // execute the rest of the code.
        _;
    }

  // @owner can change wallet address  
  function transferOwnership(address newOwner) public onlyOwner {
            require(_addr != address(0), "Not valid address");
      
      owner = newOwner;
    }

  // Owner sets the price for the product that this contract will sell
  function setPrice (uint _price) external onlyOwner{
      price = _price;
  }
   
  //@owner set the maximum number of sponsors this preregistration contract accepts
  function counterSponsors(uint _counterSponsors) external onlyOwner {
    maxSponsors = _counterSponsors;

  }

  function update_name(string memory value) public {
    dapp_name = value;
  }

  function registration() external payable {

    require(_counterSponsors =< maxSponsors, "Crowdfunding target achieved. Thank you!");
  }
  
}
