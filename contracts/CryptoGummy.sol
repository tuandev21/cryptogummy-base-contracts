// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "hardhat/console.sol";

contract CryptoGummy is Ownable {
    event newPurchase(
        address buyer,
        string message,
        uint256 timestamp,
        uint256 value,
        string name
    );

    struct Purchase {
        address buyer;
        string message;
        uint256 timestamp;
        uint256 value;
        string name;
    }

    Purchase[] purchases;

    address payable private _owner;

    constructor() payable Ownable() {
        console.log("Yoyoyo, constructed contract here");
    }

    function purchase(
        string memory _message,
        uint256 _timestamp,
        string memory _name
    ) public payable {
        purchases.push(
            Purchase(msg.sender, _message, _timestamp, msg.value, _name)
        );

        emit newPurchase(msg.sender, _message, _timestamp, msg.value, _name);
    }

    function getAllPurchases() public view returns (Purchase[] memory) {
        return purchases;
    }

    function withdrawAll() public onlyOwner {
        _owner.transfer(address(this).balance);
    }

    function withdraw(uint256 amount) public onlyOwner {
        require(amount <= address(this).balance, "Amount exceeds balance");
        _owner.transfer(amount);
    }

    function withdrawTo(uint256 amount, address payable to) public onlyOwner {
        require(amount <= address(this).balance, "Amount exceeds balance");

        to.transfer(amount);
    }
}
