pragma solidity ^0.4.18;


contract TraderRanking {

    mapping (address => uint) ranking;

    function getMaxAvailableFunds(address user) public constant;

    function getMaxAvailableLength(address user) public constant;

    function adjustRanking(int rankingChange) internal;

}
