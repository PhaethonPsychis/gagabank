//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


//import "@openzeppelin/contracts/access/Ownable.sol";
//import "@openzeppelin/contracts/utils/Context.sol";
import "https://github.com/PhaethonPsychis/playmaker/blob/main/MetaverseLandsTicket.sol";



contract ticketVendor {

  // Ticket price variable;
  //uint public price;

 // Event that log buy operation
  //event purchaseTickets(address buyer, uint256 amountOfETH, uint256 amountOfTokens);
  //event SellTokens(address seller, uint256 amountOfTokens, uint256 amountOfETH);

  MetaverseLandsTicket public MetaverseLandsTicket_;

  constructor(address tokenAddress) {

    owner = payable(msg.sender);
    MetaverseLandsTicket_ = MetaverseLandsTicket(tokenAddress);
  }
  // Allow owner to set the price for the tickets
  function setTicketsPrice(uint price) public {
      require(msg.sender = owner, "caller is not the owner");
      _price = price;
      return TicketPrice(_price);

  }
  // Allow anyone to purchase tickets
  //Buyer sets the number of tickets to buy
    function purchaseTickets(uint tickets) public payable returns (uint256 Tickets) {
        require(msg.value >= amount * price, "You must pay at least 0.01 ETH per ticket");

        // check if the ticketVendor Contract has enough amount of tickets for the transaction
        uint256 ticketBalanceVendor = ERC2OTickets.balanceOf(address(this));
        require(ERC2OTickets.balanceOf(address(this)) >= amount, "Not enough tickets in stock to complete this purchase");

        //Transfer tickets to the message sender
        (bool success, ) = msg.sender.call{value: tickets}("");
        require(success, "Transfer Failed");

        ERC2OTickets.balanceOf[address(this)] -= tickets;
        ERC2OTickets.balanceOf[msg.sender] += tickets;
    }



    // 10000000000000000 convert 0.01 eth to wei 1e16
     receive() external payable {
        require(msg.value >= amount * price, "not enough funds");
        emit Registration(msg.sender, msg.value);
  }
  // introduce fallback function
     fallback () external payable {
        require(msg.value >= 0.1 * (1 ether), "not enough funds");
  }

  //@dev Allow Only owner of the contract to withdraw funds
  //todo address msg.sender must be payable
    function withdraw() public payable {
       uint balance = _balances[msg.sender];
       require(balance >0);
       require(msg.sender = owner, "caller is not the owner");
       (bool success, ) = msg.sender.call{value: balance}("");
       require(success, "Transfer Failed");
  }

  

}

//https://docs.soliditylang.org/en/latest/solidity-by-example.html
