pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract SignX {
    uint pid;

    event NewPatient(address indexed from, uint256 timestamp, string ipfs_link, string prob_statement);

    struct Patients{
        address Patient_address;
        string ipfs_link;
        string prob_statement;
        uint256 timestamp;
    }
    Patients[] patient;
    constructor(){
        console.log("Deploying smart contract:");
    }   

function upload(string memory _ipfslink, string memory _probstatement) public {
        // console.log("%s waved w/ uid %s", msg.sender, _uid);

        patient.push(Patients(msg.sender, _ipfslink, _probstatement ,block.timestamp));
        emit NewPatient(msg.sender, block.timestamp, _ipfslink, _probstatement);
    }
}