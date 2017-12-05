pragma solidity ^0.4.18;


interface ExchangeInterface {

    function submitOrder(address tokenAddressToGive, uint tokenAtomValueToGive, address tokenAddressToGet, uint tokenAtomValueToGet) public;

    function cancelOrder(bytes32 orderID) public;

}
