//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


//import "@openzeppelin/contracts/access/Ownable.sol";
import "./ERC20Tickets.sol";
//import "@openzeppelin/contracts/utils/Context.sol";




abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    //function renounceOwnership() public virtual onlyOwner {
    //    _transferOwnership(address(0));
    //}

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */


/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */


contract ticketVendor is Ownable {


  uint public price;
  // address payable public owner;
  event Registration(address, uint);

  ERC20Tickets public ERC20Tickets_;

  constructor(address tokenAddress) {

    owner = payable(msg.sender);
    ERC20Tickets_ = ERC20Tickets(tokenAddress);
  }
  // Allow owner to set the price for the tickets
  function setTicketsPrice(uint price) public {
      require(msg.sender = owner, "caller is not the owner");
      _price = price;
      return TicketPrice(_price);

  }
  // Allow anyone to purchase tickets
    function purchaseTickets(uint amount) public payable {
        require(msg.value >= amount * _price, "You must pay at least 0.01 ETH per ticket");
        require(_balances[address(this)] >= amount, "Not enough tickets in stock to complete this purchase");
        _balances[address(this)] -= amount;
        _balances[msg.sender] += amount;
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

  //Only owner function
  // withdraw funds from the contract
  //todo address msg.sender must be payable
    function withdraw() public {
       uint balance = _balances[msg.sender];
       require(balance >0);
       require(msg.sender = owner, "caller is not the owner");
       (bool success, ) = msg.sender.call{value: balance}("");
       require(success, "Transfer Failed");
  }

  

}

//https://docs.soliditylang.org/en/latest/solidity-by-example.html
