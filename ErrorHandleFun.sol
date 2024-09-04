// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FunctionsAndErrors {
    uint public leapYearCount;


    function isLeapYear(uint year) internal pure returns (bool) {
        // A leap year must be divisible by 4 and either not divisible by 100 or divisible by 400
        return (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0);
    }

    function requireLeapYear(uint year) external {
        require(isLeapYear(year), "The year you inputted is NOT a LEAP year");
        ++leapYearCount;
    }

    function assertLeapYear(uint year) external {
        assert(isLeapYear(year)); // If the year is not a leap year, this will trigger a Solidity assertion
        ++leapYearCount;
    }

    function revertLeapYear(uint year) external {
        if (!isLeapYear(year)) {
            revert("The year you inputted is NOT a LEAP year");
        }
        ++leapYearCount;
    }
}
