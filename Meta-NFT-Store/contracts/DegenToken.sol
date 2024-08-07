// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "hardhat/console.sol";

contract Degen is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner)
        ERC20("Degen", "DGN")
        Ownable(initialOwner)
    {recruit();}
//function help us Mint DGN Tokens Only Can Be Called By Owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    //get balance  of the user account
     function getBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }
    //get balance of particular address
       function GetBalanceOf(address checker)external view returns(uint256){
        return balanceOf(checker);
    }
    //help us to transfer DGN Token From One Account to Another
        function transferDGNTokens(address _receiver, uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "You do not Posses much Degen Tokens");
        approve(msg.sender, _value);
        transferFrom(msg.sender, _receiver, _value);
    }
//Will Burn Specified Ampunt Of tokens that  we pass in
    function burnDGNTokens(uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "You do not Posses much Degen Tokens");
        _burn(msg.sender, _value);
    }
    //the struct will be used for redeem using DGN Token
    struct FBclub{
        uint256 id;
        string name;
        uint256 bid;
        uint256 age;
        string role;
        bool status;
    }
//mapping integer to struct 
    mapping (uint256=>FBclub) public data;
//initialising players details
    function recruit() private{
        data[1]=FBclub(1,"Ronaldo",2000,39,"Striker",true);
        data[2]=FBclub(2,"Messi",1900,37,"Striker",true);
        data[3]=FBclub(3,"Neymer",1500,28,"Mid-Field",true);
        data[4]=FBclub(4,"Mbappe",2500,25,"Overoll",true);
        data[5]=FBclub(5,"Suarez",1705,37,"Attacker",true);
    }

//List The Details Of Players That Can Be Recruited
        function ListRecruits() public view returns (FBclub[] memory) {
        FBclub[] memory availableRecruits = new FBclub[](5);

        for (uint256 i = 1; i <= 5; i++) {
            if (data[i].status) {
                availableRecruits[i - 1] = FBclub(data[i].id,data[i].name,data[i].bid,data[i].age,data[i].role,data[i].status);
            }
        }

        return availableRecruits;
    }
// Function Shows The Details Of Players That User Obtained
       mapping(address => uint256[]) private ObtainedPlayers;

    function RecruitedPlayers() external view returns (FBclub[] memory) {
        uint256[] storage UsrRecruitedPlayers = ObtainedPlayers[msg.sender];
        FBclub[] memory Players = new FBclub[](UsrRecruitedPlayers.length);

        for (uint256 i = 0; i < UsrRecruitedPlayers.length; i++) {
            uint256 no = UsrRecruitedPlayers[i];
            Players[i] = FBclub(data[no].id,data[no].name,data[no].bid,data[no].age,data[no].role,data[no].status);
        }

        return Players;
    }
// This Function Let User To Redeem Players In Exchange Of DGN Tokens 
        function RedeemPlayers(uint256 PayerNo) external returns (bool) {
        require(balanceOf(msg.sender) >= data[PayerNo].bid, "Insufficient DGN Token Balance For Signing Contract");
        require(PayerNo >= 1 && PayerNo <= 5, "Wrong player ID");
        require(data[PayerNo].status, "Player Has Been Already Recruited");
  
        data[PayerNo].status = false;

        ObtainedPlayers[msg.sender].push(PayerNo);

        _burn(msg.sender, data[PayerNo].bid);

        return true;
    }
}
