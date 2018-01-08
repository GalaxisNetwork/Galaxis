pragma solidity ^0.4.18;


contract TraderRanking {
    
    mapping (address => int) score;
    mapping (address => uint8) negativeStreak; //number of last consecutive negative trades (0 if last trade was positive)
    
    uint summaryOfAllScores;

    function getMaxAvailableFunds(address user) public constant;
    
    function getMaxAvailableLength(address user) public constant;
    
    function calculateScore(address trader, int lastTradeProfit) internal { //lastTradeProfit can be nagative
        if(lastTradeProfit < 0){
            negativeStreak[trader] += 1;
        } else {
            negativeStreak[trader] = 0;
        }
        score[trader] += lastTradeProfit * (negativeStreak[trader] + 1);
    }
    
    function dismissTrader(address trader) private {
        delete score[trader];
        delete negativeStreak[trader];
    }
    
    function addTrader(address trader) private {
        score[trader] = 1;
        summaryOfAllScores += 1;
    }
    
}
