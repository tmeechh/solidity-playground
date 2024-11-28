// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Inheritance
// Factories - Deploy smart contract within smart contract
// Interaction


// Made to be inherited from 
contract Ownable {
    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
        _;
    }

        constructor()  {
        owner = msg.sender;
    }
}


// Factory
contract SecretVault {
   string secret;

       constructor(string memory _secret)  {
        secret = _secret;
    }

      function getSecret() public view returns (string memory) {
        return secret;
    }
}

// The main contract
// Inheriting Ownable , ' ... is Ownable'.
contract Contract is Ownable {
   address secretVault;

    constructor(string memory _secret)  {
        SecretVault _secretVault = new SecretVault(_secret);
        secretVault = address(_secretVault);
        super;
    }

    function getSecret() public view onlyOwner returns (string memory) {
        return SecretVault(secretVault).getSecret();
    }
}
