// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionErrorhandling {
    uint256 public balance;

    function deposit(uint256 amount) external {
        require(amount > 0, "Amount must be greater than 0"); // Require statement

        uint256 previousBalance = balance;
        balance += amount;
        
        assert(balance >= previousBalance); // Assert statement
    }

    function withdraw(uint256 amount) external {
        require(amount <= balance, "Insufficient balance"); // Require statement

        uint256 previousBalance = balance;
        balance -= amount;

        assert(balance <= previousBalance); // Assert statement

        if (amount == 0) {
            revert("Amount must be greater than 0"); // Revert statement
        }
    }
}
