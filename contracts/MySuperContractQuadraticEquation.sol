pragma solidity ^0.5.0;
import "Contracts/MySuperContractBase.sol";
import "Contracts/MysuperLibrary1.sol";

contract MySuperContractQuadraticEquation  is MySuperContractBase {
  constructor() public {
    AddOper(msg.sender);
  }

//ФУНКЦИЯ РАБОТАЕТ ЕСЛИ ПОЛЬЗОВАТЕЛЬ ЕСТЬ В СПИСКАХ
  function equation (int a, int b, int c) public CanChange view returns(int256, int256) {
   return mysuperLibrary1.equation(a, b, c);
  }
}
