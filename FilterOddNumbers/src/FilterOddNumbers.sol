// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract FilterOddNumbers {
    /*
        This exercise assumes you understand how to manipulate Array.
        1. Function `filterOdd` takes an array of uint256 as argument. 
        2. Filter and return an array with the odd numbers removed.
        Note: this is tricky because you cannot allocate a dynamic array in memory, 
              you need to count the even numbers then declare an array of that size.
    */

    function filterOdd(uint256[] memory _arr)
    public
    pure
    returns (uint256[] memory)
{
    uint256 len = _arr.length;
    uint256[] memory evenNum = new uint256[](len);
    uint256 evenCount = 0;

    for (uint256 i = 0; i < len; i++) {
        if (_arr[i] % 2 == 0) {
            evenNum[evenCount] = _arr[i];
            evenCount++;
        }
    }

    // Create a new array with the even numbers that were found.
    uint256[] memory result = new uint256[](evenCount);
    for (uint256 i = 0; i < evenCount; i++) {
        result[i] = evenNum[i];
    }

    return result;
}
}
