// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // State variables
    int256 public myInt = 1;
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;

    string public  myString = "Helllo, world!";
    bytes32 public myBytes32 = "Helllo, world!";


    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello, world");

    // Local variables
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }

    //Array

    
   
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["Dog", "Goat", "Tiger"];
    string[] public values;
    uint256[][] public array2D =[[1, 2, 3], [4, 5, 6]];

  function addValue(string memory _value) public {
    values.push(_value);
  }

  function valueCount() public view returns(uint) {
    return values.length;
  }

   
}