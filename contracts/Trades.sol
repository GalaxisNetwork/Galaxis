pragma solidity ^0.4.18;

import "./MinHeap.sol";

contract Trades {
    
    struct Trade{
        uint startDate;
        uint actualEndDate;
        uint maxLength;
        uint weiValueGive;
        address tokenToGet;
        uint tokenAtomValueToGet;
        address exchange;
        int profitPercent;
    }
    
    mapping(uint => Trade) internal trades; /*All trades(value) mapped to a sequential ID(key)*/
    mapping(address => uint[]) internal activeTrades; /*All active (open) tradeID-s(key) mapped to their trader(value)*/
    mapping(address => uint[]) internal pastTrades; /*All past (closed) tradeID-s(key) mapped to their trader(value)*/
    mapping(uint => uint) internal expirations; /* key: expiration dates, value: tradeID-s*/
    
    MinHeap.Heap internal expirationsSorted; /* expiration dates sorted in a heap*/
    
    function openTrade(){
        
    }
    
    function closeExpiredTrade(){
        
    }
    
    function closeTrade(){
        
    }
    
    
    
    
}
