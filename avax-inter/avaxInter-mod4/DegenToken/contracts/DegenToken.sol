// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20 , Ownable{

    constructor() ERC20("Degen", "DGN") {
    }

        function mint(address to, uint256 amount) public  {
            require(msg.sender == owner());
            _mint(to, amount);
    }
    function giftItems() public  view {
        console.log("gift-1 for 100 token ");
        console.log("gift-2 for 200 token ");
        console.log("gift-3 for 300 token ");
        console.log("gift-4 for 400 token ");
        console.log("gift-5 for 500 token");
    }
    function redeemFunction(uint itemNo) public {
        if(itemNo == 1) {
            require(balanceOf(msg.sender) > 100 ,"not enough balance");
            transfer(owner() , 100) ;
        } 
        else if(itemNo == 2) {
            require(balanceOf(msg.sender) > 200 ,"not enough balance");
            transfer(owner() , 200) ;
        } else if(itemNo == 3) {
            require(balanceOf(msg.sender) > 300 ,"not enough balance");
            transfer(owner() , 300) ;
        } else if(itemNo == 4) {
            require(balanceOf(msg.sender) > 400 ,"not enough balance");
            transfer(owner() , 400) ;
        } else if(itemNo == 5) {
            require(balanceOf(msg.sender) > 500 ,"not enough balance");
            transfer(owner() , 500) ;
        } else{
            console.log("chose the correct option");
        }
    }
}
