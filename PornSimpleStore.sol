pragma solidity ^0.6.0;

contract PornList{

    uint256 prioritytowatch;
    
    struct PornCategory{
        uint256 prioritytowatch;
        string position;

    }
PornCategory[] public findcategory;
mapping(string => uint256) public nameTofavouritePositionNumber;

    function numberofwatch(uint256 _categoryNumber) public{
        prioritytowatch = _categoryNumber;
    }

function retrieve() public view returns(uint256){
    return prioritytowatch;

}

    function addPosition(string memory _Position, uint256 _CategoryNumber) 
public {
        findcategory.push(PornCategory(_CategoryNumber,_Position));  
        nameTofavouritePositionNumber[_Position] = _CategoryNumber;
    }

}
