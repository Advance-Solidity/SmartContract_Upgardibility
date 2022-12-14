//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;


 contract EternalStorage{

    mapping(bytes32 => uint) UIntStorage;

    function getUIntValue(bytes32 record) public view returns (uint){
        return UIntStorage[record];
    }

    function setUIntValue(bytes32 record, uint value) public
    {
        UIntStorage[record] = value;
    }

     mapping(bytes32 => bool) BooleanStorage;

    function getBooleanValue(bytes32 record) public view returns (bool){
        console.log("address of caller :",msg.sender);
        return BooleanStorage[record];
    }

    function setBooleanValue(bytes32 record, bool value) public
    {
        BooleanStorage[record] = value;
    }


}



