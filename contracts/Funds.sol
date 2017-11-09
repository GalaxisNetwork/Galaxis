pragma solidity ^0.4.18;
contract Funds {
    struct Investment{
        uint startDate;
        uint endDate;
        uint value;
    }
    
    mapping(address => Investment[]) public investments;
    uint public totalHeld;
    uint public onTrades;
    
    function invest() public {
        
    }
    
    function withdraw(uint index) public {
        
    }
    
    function checkFunds() public view{
        
    }
    
}