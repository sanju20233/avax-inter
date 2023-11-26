# avaxinter-mod2
```markdown
# Smart Contract and Frontend Calculator

This project consists of a smart contract called "Calculator" and a frontend interface to interact with the contract. The smart contract allows users to perform basic arithmetic operations such as addition, subtraction, multiplication, and division on two numbers.

## Smart Contract

The smart contract is implemented in Solidity and provides the following functionalities:

### Constructor

The constructor initializes the values of `a` and `b` to zero.

```solidity
constructor() {
    a = 0;
    b = 0;
}
```

### Functions

1. `setValues(int _a, int _b)`: Sets the values of `a` and `b` to the provided inputs.

```solidity
function setValues(int _a, int _b) public {
    a = _a;
    b = _b;
}
```

2. `add()`: Returns the sum of `a` and `b`.

```solidity
function add() public view returns (int) {
    return a + b;
}
```

3. `sub()`: Returns the absolute difference between `a` and `b`.

```solidity
function sub() public view returns (int) {
    return abs(a - b);
}
```

4. `multiply()`: Returns the product of `a` and `b`.

```solidity
function multiply() public view returns (int) {
    return a * b;
}
```

5. `divide()`: Returns the quotient of `a` divided by `b`. Throws an error if `b` is zero.

```solidity
function divide() public view returns (int) {
    require(b != 0, "Cannot be divided by zero");
    return a / b;
}
```

6. `abs(int x)`: A private pure function that returns the absolute value of an integer.

```solidity
function abs(int x) private pure returns (int) {
    return x >= 0 ? x : -x;
}
```

## Frontend Calculator

The frontend interface is implemented using React and ethers.js library for Ethereum interaction. It allows users to input two numbers, set the values in the smart contract, and perform arithmetic operations on them.

### Installation

Before running the project, make sure you have Node.js and npm (Node Package Manager) installed. Then, navigate to the project directory and run the following command to install the dependencies:

```
$ npm install
```

### Local Blockchain Setup

1. Start a local blockchain using Ganache CLI in a separate terminal:

```
$ ganache-cli
```

2. Open the Remix IDE (https://remix.ethereum.org/) in your browser.

3. Connect the Remix IDE to the Ganache provider by selecting "Web3 Provider" as the environment and entering the appropriate URL (e.g., http://localhost:8545).

4. Compile and deploy the smart contract:
   - Create a new file in the Remix IDE and name it "Calculator.sol".
   - Copy and paste the provided smart contract code into the file.
   - Compile the smart contract by clicking on the "Solidity Compiler" tab and then clicking the "Compile Calculator.sol" button.
   - Deploy the smart contract by clicking on the "Deploy & Run Transactions" tab, selecting the "Calculator" contract from the dropdown menu, and clicking the "Deploy" button.
   - Take note of the deployed smart contract address (e.g., 0x804a85dBe0743FaB694CC99d51Bf0330c74A67D5).

5. Create a JSON file for the smart contract's ABI:
   - Copy the ABI code for the deployed smart contract.
  
