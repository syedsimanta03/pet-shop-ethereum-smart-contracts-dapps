pragma solidity >=0.4.21 <0.7.0;

contract Adoption {
  address[16] public adopters;

  function adopt(uint petId) public returns (uint) {
    require(petId >= 0 && petId <= 15, 'Maximum pets limit is 15');

    adopters[petId] = msg.sender;

    return petId;

  }

  // Retrieving the adopters
  function getAdopters( ) public view returns (address[16] memory) {
    return adopters;
  }

}