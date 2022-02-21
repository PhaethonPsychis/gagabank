# gagabank
Receive money. Transfer funds. You are the bank. A simple and powerful contract on the Ethereum blockchain that implements latest design patterns on bank accounts.
#### Design Principles
To minimize cost of contract deployment and gas consumption for the owner and the users we use the Ethereum blockchain as a settlement and computation layer. We transfer storage out of the blockchain whenever this is possible.
## What we can do with gagabank?
#### Launch a funding round, a pre-sale of a digital artifact. Accept payments and Transfer funds. Use a multi signature wallet if you like or need.
#### Pre-set the amount for payment
#### User make payments using:
1.the application interface
2.Etherscan.io website
3.Crypto wallets, they just send a transaction to the contract. The contract exposes a method to aceept arbitrary payments

#### On-Chain Store the contributions amounts
#### External database. Transfer the addresses on a "whitelist" that is not on-chain. We can always query the events for any verifications
