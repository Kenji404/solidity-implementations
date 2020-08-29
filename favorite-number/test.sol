// SPDX-License-Identifier: SPDX-2.2
pragma solidity <=0.7.0;

contract Test {
    mapping(address => uint256) favoriteNumber;

    function setMyNumber(uint256 _myNumber) public {
        favoriteNumber[msg.sender] = _myNumber;
    }

    function whatIsMyNumber() public view returns (uint256) {
        return favoriteNumber[msg.sender];
    }
}