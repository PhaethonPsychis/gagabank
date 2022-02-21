# playmaker
Launch a presale. Receive money. Transfer funds. You are the bank. A simple and powerful platform on the Ethereum blockchain to start a presale.</br>

Imagine Alice wants to raise some Ether to launch her startup project. She wants to launch a presale like what the kickstarter is doing. She needs a bank platform that is decentralised, permissionless and crypto friendly to accept donations from friends and family. Bob wants to send some Ether to Alice's project. Bob is the sender and Alice is the recipient.
Alice will launch a simple smart contract that lets her receive and transmit Ether. 
For payments she will use the same account but instead of calling a function herself to initiate a payment, she will let a recipient do that, and therefore pay the transaction fee.
When the presale is over Alice will launch the project and she will use the list of addresses to send her sponsors their membership cards


#### Design Principles
Store data such as sponsors addresses on an external database because is very cheap. The alternative is to create a solidity mapping and store data on the blockchain which is very expensive and not necessary</br>
Minimize the cost of contract deployment</br>
Minimize the transaction cost for the end user</br>
Perform calculations off-chain</br>

# A decentralised and permissionless platform for presale
You can start accepting payments in your playmaker account</br>
You can set a minimum and or a maximum amount for each transaction</br>
Store the sponors addresses in a list to use for distribution of products or services when the project is ready</br>
#### Create multiple incoming Payment methods
<br>Sponsors can use any of the following payment methods</br>
<br>1. The application interface if you have one. It is not necessary to create one</br>
<br>2. Etherscan.io website</br>
<br>3. Use any Crypto wallet</br>

### Create multiple PayOut payment methods for the project owners

### Next steps: 
Sign Transactions off-chain</br>
Distribute a token to list members</br>


