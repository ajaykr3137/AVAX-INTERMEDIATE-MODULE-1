

# Solidity Error Handling Contract - Leap Year Checker

This repository contains a Solidity smart contract that demonstrates error handling using the `require()`, `assert()`, and `revert()` statements through a simple Leap Year checker.

## Problem Statement

Write a smart contract that checks if a given year is a leap year using the `require()`, `assert()`, and `revert()` statements to demonstrate different error-handling techniques in Solidity.

## Description

This smart contract illustrates how to use error-handling mechanisms (`require`, `assert`, and `revert`) to validate input data by checking if a year is a leap year.

- The `requireLeapYear` function checks whether the given year is a leap year using the `require()` statement. If the input year is not a leap year, it throws an error with a message.
- The `assertLeapYear` function checks the leap year condition using the `assert()` statement, which will cause the transaction to fail and consume all gas if the year is not a leap year.
- The `revertLeapYear` function checks if the given year is a leap year and uses the `revert()` statement to explicitly revert the transaction with a custom error message if the condition fails.

## Getting Started

### Executing the Program

To run this program, you can use Remix, an online Solidity IDE. Follow these steps to get started:

1. **Go to Remix:**
   - Visit [Remix IDE](https://remix.ethereum.org/).

2. **Compile the Code:**
   - Click on the "Solidity Compiler" tab in the left-hand sidebar.
   - Ensure the "Compiler" option is set to `0.8.17` (or another compatible version).
   - Click on the "Compile FunctionsAndErrors.sol" button.

3. **Deploy the Contract:**
   - Once the code is compiled, navigate to the "Deploy & Run Transactions" tab in the left-hand sidebar.
   - Select the `FunctionsAndErrors` contract from the dropdown menu.
   - Click on the "Deploy" button.

4. **Interact with the Contract:**
   - After deployment, you can interact with the contract by calling the following functions:
     - `requireLeapYear`: Input a year and check if it is a leap year using `require()`.
     - `assertLeapYear`: Input a year and check if it is a leap year using `assert()`.
     - `revertLeapYear`: Input a year and check if it is a leap year using `revert()`.

## Author

ajaykr3137  
ajaykr  
