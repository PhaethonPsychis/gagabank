# playmaker. Raise like is 2017
The purpose of this contract is to receive money from addresses</br>
and allow owner to store addresses off-chain in external database in the presale_list<br>
# Parameters
amount</br>
msg.sender</br>
msg.value</br>
maxCountId</br>
# How it works
1. the product-service of the pre-sale is described in the front-end and this contract is agnostice to it.
2. Onwer sets a price for the product
3. Owner sets the maximum number of sales this contract can do
4. User initiates transaction and contract receives the amount. Contract emits event
5. owner stores the events in the external database in the presale_list
6. After 
# The utility of this contract is terminated 
