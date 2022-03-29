//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * Ethereum Metaverse Lands Community Conference
 * @dev An ERC20 ticket for the EMLCC incentivised conference and ecosystem launch
 * Token distribution at creation time 
 * 2.5 Million tickets "tickets4Sale" available for purchase are transferred to the token contract address;
 * 0.25 Million tickets "ticketsDrop" rewards for researchers, volunteers and incentivize community participation are transferred to the owners address   
 * Support for the owner (the DAO) to mint new tokens, at up to 2% PA.  
 *         
 *       
 */


contract ERC20Tickets is ERC20, Ownable {


    constructor (
        uint256 tickets4Sale,
        uint256 ticketsDrop
    )

        ERC20("Ethereum Metaverse Lands", "EMLCC"){

            _mint(msg.sender, ticketsDrop);
            _mint(address(this), tickets4Sale);
        }


}
