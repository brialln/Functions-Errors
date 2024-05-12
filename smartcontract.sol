// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SmartContract {
    uint256 public value;

    function setValue(uint256 _newValue) external {
        require(_newValue >= 100 && _newValue <= 5000, "You can only enter up to 100 but cannot be above 5000");
        value = _newValue;
    }

    function assertValue(uint256 _num) external pure returns (uint256) {
        assert(_num >= 100 && _num <=5000);
        return _num;
    }

    function revertValue(uint256 _num) external pure returns (uint256) {
        if (_num >= 100 && _num <=5000) {
            revert("Value must between 100 and 5000");
        }

        return _num;
    }
}
