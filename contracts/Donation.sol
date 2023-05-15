// SPDX-License-Identifier: SEE LICENSE IN LICENSE


pragma solidity ^0.8.0;

contract DonationContract{

    address owner;
    uint256 totalDonations;


    struct Donation{
        address donor;
        uint256 amount;

    }
    Donation donation;
    Donation[] donations;

    constructor(){
        owner = msg.sender;
    }

    receive() external payable{
        donation = Donation(
            msg.sender,
            msg.value
        );
        donations.push(donation);
        totalDonations += msg.value;
    }

    function getDonations() external view returns (Donation[] memory) {
    return donations;
  }

  function getTotalDonations() external view returns (uint256) {
    return totalDonations;
  }



}

