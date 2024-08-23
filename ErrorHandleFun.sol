// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract ErrorHandling {
    uint public balance = 0;

    function depositRequire(uint _amount) public {
        require(_amount > 0, "Deposit amount must be greater than zero");
        balance += _amount;
    }

    function withdrawRequire(uint _amount) public {
        require(_amount > 0, "Withdrawal amount must be greater than zero");
        require(_amount <= balance, "Insufficient balance");
        balance -= _amount;
    }

    function divideRequire(uint _numerator, uint _denominator) public pure returns (uint) {
        require(_denominator != 0, "Cannot divide by zero");
        return _numerator / _denominator;
    }

    function assertFunction(uint _numerator, uint _denominator, uint _expectedResult) public pure {
        uint result = divideRequire(_numerator, _denominator);
        assert(result == _expectedResult);
    }

    function revertFunction(uint _numerator, uint _denominator, uint _revertValue) public pure {
        uint result = divideRequire(_numerator, _denominator);
        if (result == _revertValue) {
            revert("The function reverts because the result matches the revert value.");
        }
    }
}
