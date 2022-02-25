# playmaker. Raise like is 2017
What the project creator can do with this contract?.Launch a presale. Receive money. Register your sponsors. Playmaker is a simple and powerful fundraising protocol on the Ethereum blockchain. It is a self-custodial contract, permissionless and decentralised. You are in control</br>
What a consumer can do with this contract? </br>
Register for an up-coming sale of a product and take advantage of reduced prices.</br>
Support a project she loves to raise money and launch</br>
#### Usecase description
Imagine Alice wants to raise some Ether to finish her new project. She wants to launch a presale and offer her community the opportunity to buy the artifact with a discount. There are not any intermediaries. It's just Alice and her friends.
Alice needs a bank platform that is decentralized, permissionless, and crypto-friendly to accept donations from friends and family easily.</br>
Bob wants to send some Ether to Alice's project. Bob is the sender and Alice is the recipient. Alice creates a playmaker bank that lets her receive Ether.</br>

#### Fair distribution of product and services to the community at significant discount

#### Creating the list of sponsors
Alice wants to store the addresses of all her supporters supporters in a list along with the amount that they have sent. She will use this list to allow sponsors to purchase the product when launched at the price agreed. Store data such as sponsors addresses on an external database. Only public keys is stored here. The application will never request secret keys</br>

#### Payout functions
Alice will also need to transmit Ether from her bank to external accounts.</br> 
For payouts she will use the solidity withdrwal instead of calling a function herself to initiate a payment, she will let a recipient do that, and therefore pay the transaction fee. Alice will store the addresses and the associated amounts in a ledger inside the bank. The account is public and everyone can inspect the administration. </br>

#### Cost considerations and design decisions

Minimize the cost for contract operations for the owner</br>
Minimize the transaction cost for the end user</br>
Perform calculations off-chain whenever is possible</br>

# What you can do on the presale platform?
1.0 You can start accepting payments in your playmaker account</br>
2.0 You can set the presale price for the object </br>
3.0 Store the sponors addresses in a list to use for distribution of products or services when the project is ready</br>
4.0 Create multiple incoming Payment methods to allow sponsors register to the presale and send contributions</br>
4.1 The application interface. Sponsor can use the online website </br>
4.2. Etherscan.io website</br>
4.3. Crypto wallet</br>
5.0 Create PayOut payment methods for the project owners

### Next steps: 
Let sponsors purchase the product at the pre-arranged price. Use the address-list</br>
Sign Transactions off-chain</br>


