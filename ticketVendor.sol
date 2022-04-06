//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


import "@openzeppelin/contracts/access/Ownable.sol";
//import "@openzeppelin/contracts/utils/Context.sol";



contract vendor is Ownable{

   uint internal internal_number;

   uint256 public price;

   
   uint public amountTickets;


   
    function setTicketPrice(uint _price) public onlyOwner {
        price = _price ;
    }
    
    function set_internal_number(uint _value) public {
        internal_number = _value;
    }


    function buyTickets(uint _amountTickets) public payable returns (uint256){
        amountTickets = _amountTickets;
        require(msg.value >= amountTickets * price * 1 wei, "Not enough Eth to buy the tickets");
        
      

      

        return amountTickets;
    }

}
