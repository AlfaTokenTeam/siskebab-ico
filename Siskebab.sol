pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Siskebab is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Siskebab(address _owner)  UpgradeableToken(_owner) {
    name = "Siskebab";
    symbol = "skb";
    totalSupply = 6666666666600000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}