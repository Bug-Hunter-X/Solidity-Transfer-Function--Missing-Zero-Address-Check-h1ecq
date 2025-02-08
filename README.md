# Solidity Transfer Function Bug: Zero Address Check

This repository demonstrates a common bug in Solidity smart contracts: forgetting to check for a zero address before transferring tokens.  The `transfer` function in `bug.sol` lacks this critical check, leading to potential reverts and unexpected behavior.

The solution (`bugSolution.sol`) demonstrates the correct implementation with the zero-address check added.

## Bug Description

The `transfer` function in `bug.sol` does not verify that the recipient address (`to`) is not the zero address. Attempting to transfer tokens to the zero address will result in the transaction reverting. This can be difficult to debug without proper error handling and logging.

## Solution

The `bugSolution.sol` file includes a check using `require(to != address(0), "Cannot send to zero address");` to prevent transfers to the zero address.  This significantly improves the robustness and security of the smart contract.
