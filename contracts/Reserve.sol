// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./interfaces/IReserve.sol";

contract Reserve is IReserve {
    mapping(address => uint) minterDebtBalance;
    mapping(address => uint) minterDepositBalance;

    uint minCollateralRatio;

    function setMinCollateralRatio(uint collateralRatio) internal returns(bool) {
        minCollateralRatio = collateralRatio;
        return true;
    }

    function getMinCollateralRatio() internal returns(uint) {
        return minCollateralRatio;
    }

    function getMinterCollateralRatio(address minter) internal returns(uint userDebt) {
        uint userDebt = minterDebtBalance[minter];
    }

    function addMinterDebt(address minter, uint amount) internal returns(bool) {
        minterDebtBalance[minter] += amount;
        return true;
    }

    function reduceMinterDebt(address minter, uint amount) internal returns(bool) {
        minterDebtBalance[minter] -= amount;
        return true;
    }

    function getMinterDebt(address minter) internal returns(uint userDebt) {
        uint userDebt = minterDebtBalance[minter];
    }

    function addMinterDeposit(address minter, uint amount) internal returns(bool) {
        minterDepositBalance[minter] += amount;
        return true;
    }

    function reduceMinterDeposit(address minter, uint amount) internal returns(bool) {
        minterDepositBalance[minter] -= amount;
        return true;
    }

    function getMinterDeposit(address minter) internal returns(uint userDeposit) {
        uint userDeposit = minterDepositBalance[minter];
    }

}