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
