# MyToken Contract

## Overview
The MyToken contract is an ERC20 token implementation written in Solidity. It extends the OpenZeppelin `ERC20` contract, which provides the standard functionality for ERC20 tokens. The contract includes functions for minting new tokens, burning tokens, and transferring tokens to other addresses.

## Deployment
To deploy the MyToken contract, follow the steps below:

1. Compile the contract using Solidity compiler. Make sure you have Solidity compiler installed on your machine.

2. Deploy the contract to the Ethereum network of your choice using a suitable Ethereum development framework like Truffle or Hardhat. Deploy the contract with the desired constructor arguments: `name`, `symbol`, `decimals`, and `initialSupply`.

## Usage
Once the MyToken contract is deployed, you can interact with it using various methods:

- Minting Tokens:
To mint new tokens, call the `mint` function, passing the desired amount as an argument. Only the contract owner can mint tokens.

    ```solidity
    function mint(uint amount) public
    ```

Note: Make sure to connect your Ethereum wallet (e.g., MetaMask) to the deployed contract on the Ethereum network you deployed to in order to interact with the contract.

## License
This contract is licensed under the GNU General Public License v3.0. You can find the full text of the license in the SPDX-License-Identifier field at the beginning of the contract file.
