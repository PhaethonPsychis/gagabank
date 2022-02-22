# playmaker. Raise like is 2017
Launch a presale. Receive money. Register your sponsors. Playmaker is a simple and powerful fundraising protocol on the Ethereum blockchain. It is a self-custodial platform, permissionless and decentralised. You are in control. </br>
#### Usecase description
Imagine Alice wants to raise some Ether to finish her new project. She wants to launch a presale and offer her community the opportunity to buy the artifact with a discount. This type of fundraising is like what Kickstarter is doing but here there are no intermediaries. It's just Alice and her friends. Alice needs a bank platform that is decentralized, permissionless, and crypto-friendly to accept donations from friends and family easily..</br>
Bob wants to send some Ether to Alice's project. Bob is the sender and Alice is the recipient. Alice creates a playmaker bank that lets her receive Ether.</br>
Alice will also need to transmit Ether from her bank to external accounts. For payouts instead of calling a function herself to initiate a payment, she will let a recipient do that, and therefore pay the transaction fee. Alice will store the addresses and the associated amounts in a ledger inside the bank. The account is public and everyone can inspect the administration. </br>
Alice will use the list of addresses to send sponsors their product. 


#### Design Principles
Store data such as sponsors addresses on an external database. Only public keys is stored here. The application will never request secret keys</br>
Make the contract light and reduce the cost for deployment</br>
Minimize the transaction cost for the end user</br>
Perform calculations off-chain whenever is possible</br>

# What you can do on the presale platform?
1.0 You can start accepting payments in your playmaker account</br>
2.0 You can set a minimum and or a maximum amount for participation in the presale</br>
3.0 Store the sponors addresses in a list to use for distribution of products or services when the project is ready</br>
4.0 Create multiple incoming Payment methods to allow sponsors register to the presale and send contributions</br>
4.1 The application interface. Sponsor can use the online website </br>
4.2. Etherscan.io website</br>
4.3. Crypto wallet</br>
5.0 Create PayOut payment methods for the project owners

### Next steps: 
Distribute a token to list members</br>
Sign Transactions off-chain</br>


