# breeCoin
breeCoin is a simple ERC-20 token contract written in Solidity. It has the following features:

The token name is breeCoin and the symbol is BC.
The total supply of tokens is initially zero and can be increased or decreased by calling the mint or burn functions.
The mint function allows anyone to create new tokens and assign them to any address.
The burn function allows anyone to destroy tokens from any address, as long as they have enough balance.
The balances mapping stores the token balance of each address.

## How to use
To use this contract, you need to have a Solidity compiler (version 0.8.18 or higher) and a compatible blockchain platform (such as Ethereum or Binance Smart Chain). You can deploy the contract using a tool like Remix or Truffle. After deploying the contract, you can interact with it using a web3 library (such as web3.js or ethers.js) or a wallet (such as Metamask or Trust Wallet).

## Example
Here is an example of how to use the contract in JavaScript:

// Import web3 library const Web3 = require(‘web3’);

// Connect to a blockchain node const web3 = new Web3(‘https://bsc-dataseed.binance.org/’);

// Get the contract address const contractAddress = ‘0x…’;

// Get the contract ABI const contractABI = […];

// Create a contract instance const breeCoin = new web3.eth.Contract(contractABI, contractAddress);

// Get the account address const accountAddress = ‘0x…’;

// Mint 1000 tokens to the account breeCoin.methods.mint(accountAddress, 1000).send({from: accountAddress}) .then((receipt) => { console.log(‘Minted 1000 tokens’); console.log(receipt); }) .catch((error) => { console.error(error); });

// Burn 500 tokens from the account breeCoin.methods.burn(accountAddress, 500).send({from: accountAddress}) .then((receipt) => { console.log(‘Burned 500 tokens’); console.log(receipt); }) .catch((error) => { console.error(error); });

// Get the balance of the account breeCoin.methods.balanceOf(accountAddress).call() .then((balance) => { console.log(‘Balance of the account is ’ + balance + ’ tokens’); }) .catch((error) => { console.error(error); });

## License
This code is licensed under the MIT License.
