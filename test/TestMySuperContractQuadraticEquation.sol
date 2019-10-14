pragma solidity >=0.4.25 <0.6.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";

import "../contracts/MySuperContractQuadraticEquation.sol";

contract TestMySuperContractQuadraticEquation  {
    function testEquation() public {
        MySuperContractQuadraticEquation c = new MySuperContractQuadraticEquation();
        int256 val1;
        int256 val2;
        (val1, val2) = c.equation(9, 25, 4);
    Assert.equal(val1 ,val2, "");
    }
}