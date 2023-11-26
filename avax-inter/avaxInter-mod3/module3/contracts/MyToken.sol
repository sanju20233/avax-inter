// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0 ;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract MyToken is ERC20  {
address owner ;
constructor () ERC20("MyToken" , "MYT")  {
  owner =msg.sender ;
}
function mint (uint amount) public  {
require(msg.sender == owner , "not the owner of the contract " );
     _mint(msg.sender , amount  );
}
function burn(uint _amount) public  {
    _burn(msg.sender , _amount) ;
}
function transfering(address _address , uint _amount ) public {
    transfer(_address , _amount);
 }
}