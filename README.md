# gagabank
Receive money. Transfer funds. You are the bank. A simple and powerful contract on the Ethereum blockchain that implements latest design patterns on bank accounts.
#### Design Principles
To minimize cost of contract deployment and gas consumption for the owner and the users we use the Ethereum blockchain as a settlement and computation layer. We transfer storage out of the blockchain whenever this is possible.
## What we can do with gagabank?
#### Launch a pre-sale of a digital artifact. 
Start a funding round a forbidden ICO like is 2017. Accept payments. Users will deposit money in your bank account.
#### How are users making payments to your project:
<br>They can use any of the following payment methods</br>
<br>1.the application interface</br>
<br>2.Etherscan.io website</br>
<br>3.Crypto wallets, they just send a transaction to the contract. The contract exposes a method to aceept arbitrary payments</br>

#### On-Chain Store the contributions amounts
#### External database. Transfer the addresses on a "whitelist" that is not on-chain. We can always query the events for any verifications
