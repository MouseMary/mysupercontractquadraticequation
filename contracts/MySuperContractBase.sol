pragma solidity ^0.5.0;

contract MySuperContractBase {
    address private owner ;
    address[] private opers;

    constructor() public {
    owner = msg.sender;
  }

//Попытаться добавить оператора, вернет false - если нет прав
function TryAddOper(address operAddress)public returns (bool) {
  if(IsUserCanChange(msg.sender)){
    AddOper(operAddress);
    return true;
  }
  else{
    return false;
  }
}

//Может ли человек с указанным адресом расширять список операторов
function IsUserCanChange(address user) public view returns(bool canCHange) {
 canCHange = false;
 if (user == owner)  canCHange = true;
 for (uint i = 0; i < opers.length ; i++ ){
       if (opers[i] == user) {canCHange = true;}
   }
   return canCHange;
}

function AddOper(address oper) internal {
  opers.push(oper);
}

modifier CanChange() {
  //https://solidity.readthedocs.io/en/v0.4.24/common-patterns.html
  require(IsUserCanChange(msg.sender), "пользователь должен быть уполномочен");
 // Do not forget the "_;"! It will
 // be replaced by the actual function
 // body when the modifier is used.
  _;
}
}
