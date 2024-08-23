
# Solidity Error Handling Contract

This repository contains a Solidity smart contract demonstrating error handling using the `require()`, `assert()`, and `revert()` statements.

## Problem Statement

Write a smart contract that implements the `require()`, `assert()`, and `revert()` statements to demonstrate how error handling works in Solidity.

## Description

This program is a Solidity smart contract designed to illustrate how to use error-handling mechanisms (`require`, `assert`, and `revert`) in various scenarios.

- The `depositRequire` function allows a user to deposit an amount into the contract, ensuring the deposit amount is greater than zero using `require()`. If valid, it updates the contract's balance.
- The `withdrawRequire` function enables a user to withdraw an amount, ensuring that the withdrawal amount is both greater than zero and not more than the available balance. It uses `require()` for these checks and updates the balance if valid.
- The `divideRequire` function performs division, using `require()` to ensure the denominator is not zero, avoiding division by zero errors.
- The `assertFunction` takes three inputs, performs division, and uses `assert()` to ensure that the result matches the expected output. If the assertion fails, the transaction is reverted.
- The `revertFunction` performs division and uses `revert()` to explicitly revert the transaction if the division result matches a specified value.

## Getting Started

### Executing the Program

To run this program, you can use Remix, an online Solidity IDE. Follow these steps to get started:

1. **Go to Remix:**
   - Visit [Remix IDE](https://remix.ethereum.org/).

2. **Compile the Code:**
   - Click on the "Solidity Compiler" tab in the left-hand sidebar.
   - Ensure the "Compiler" option is set to `0.8.9` (or another compatible version).
   - Click on the "Compile ErrorHandling.sol" button.

3. **Deploy the Contract:**
   - Once the code is compiled, navigate to the "Deploy & Run Transactions" tab in the left-hand sidebar.
   - Select the `ErrorHandling` contract from the dropdown menu.
   - Click on the "Deploy" button.

4. **Interact with the Contract:**
   - After deployment, you can interact with the contract by calling the following functions:
     - `depositRequire`: Input an amount greater than 0.
     - `withdrawRequire`: Input an amount greater than 0 and less than or equal to the current balance.
     - `divideRequire`: Input a numerator and a non-zero denominator.
     - `assertFunction`: Input numerator, denominator, and expected result for the division.
     - `revertFunction`: Input numerator, denominator, and a value that might trigger a revert if it matches the division result.



## Author

{ajaykr3137]  
Metacrafters ID: ajaykr

## License

This project is licensed under the MIT License - see the LICENSE file for details.

---
