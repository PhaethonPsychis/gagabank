# playmaker. Raise like is 2017
The purpose of this contract is to allow users to register in a presale_list by sending a transaction with a specified amount of Ether</br>
The contract exposes methods to receive, store and transfer  Ether from and to addresses</br>
The owner store addresses off-chain in external database in the presale_list<br>
# Parameters
amount</br>
msg.sender</br>
msg.value</br>
maxCountId</br>
# How it works
1. the product-service of the pre-sale is described in the front-end and this contract is agnostic to it.
2. Onwer sets a price for the presale
3. Owner sets the maximum number of sales this contract can do
4. User initiates transaction and contract receives the amount. Contract emits event
5. owner stores the events in the external database in the presale_list
6. After 
# The utility of this contract is terminated 
### References for design
# The argument against on-chain presale/allow lists
There are a lot of different strategies for how to handle a presale list for an NFT drop. You’ll also hear it referred to as a whitelist, or allow-list amongst other names. It simply refers to a list of pre-approved addresses that are allowed to interact with the contract in a specified way, eg. minting during a presale window.
A common approach is to simply include a data structure in the contract’s storage that maps each address to a bool, or each address to the number of mints that address is allowed, which might look something like:</br>
'''mapping(address => uint8) _allowList;
function setAllowList(
address[] calldata addresses, 
uint8 numAllowedToMint
) external onlyOwner {
  for (uint256 i = 0; i < addresses.length; i++) {
    _allowList[addresses[i]] = numAllowedToMint;
  }
}'''
<br> There’s absolutely nothing wrong this approach, but it can get a little costly on the contract owner’s side (the onlyOwner modifier indicates this function can only be called by the contract owner) when populating the address lists. If you need to add something like 1000 addresses to the presale list, that’s a lot of gas being spent on storage operations. Because The Humans contract had to account for several different “lists” (Authors, Honoraries, Presale, Genesis Claims), we came to the conclusion that this was probably not the best approach for us.
</br>

