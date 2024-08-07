# DGN-Store
In This Project We Are Going To Write A SmartContract In Solidity With ERC20 Standards Which Can Perform Basic Functions Like :mint(onlyOwner),Transfer Token,Get Balance of Token And Also Burn Token And Deploy The Contract Into Fuji C-chain Of Avalanche Network.Name Of The Token Used Is "Degen" With Symbol "DGN" .And Interacting With The Contract By Calling THe Contract Into REMIX IDE By Injecting The METAMASK. We Are Also Providing An inBuilt Store In The Contract Which Allow User To Redeem And Recruit Players For Their Football Club In Exchange Of Tokens.The User Are Given With some Details Of Players That Can Be  Recruited By Passing Their ID To Redeem Function.One Player Can Only Be Recruited by One User Which Makes The Game Interesting And FUN TO PLAY!!!
The Main Components That Needed To Build The Project is :
* NodeJS
* HardHat
* Solidity
* Remix
## Description
This Project Include :
* Writing ERC20 Contract And Deploying Into Fuji C-Chain Avalanche Network
* Verifying The Delployed Contract Using hardhat-verify
* Interacting With Deployed Contract Using Remix And Injecting Metamask
* Redeeming and Other Function Calling
* Tracking The Transactions Log In Testnet SnowTrace
* DGN Token Details:
````
Name:Degen
Symbol:DGN
Decimal:18
Minatable
Ownable
Burnable
````
## Getting Started
* The Token Is Written In Solidity And ERC20 Templates And More Details Can Be obtained From OpenZeppelin libraries [here](https://openzeppelin.com/contracts/)
* And You Can Build Your on Token Contract From Scratch By Importing ERC20 Standards From This [page](@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol)
* This Project Just Shows A Simple Version Of token Contract In Solidity With ERC20 Standards It Doesn't Means Final Output It Needs To Be Further Developer For Interacting With Deapps And Deploy In Main Net .
* Make Sure You Have MetaMAsk Installed on YOur Browser And Use THe Adress From The [Metamask](https://metamask.io/) For The project
* Install [Hardhat](https://hardhat.org/) Dependencied For Deploying The Contract To Fuji Network And Verify
* Getting Enough [Faucet](https://faucet.avax-test.network/) C-Chain For Deploying ,Verifying And Interacting With Smart Contract You Can Get (Upto 2 AVAX)By Joinig Their Guild Of Fuji
* Going To [Remix](https://remix.ethereum.org/) For Interacting With Smart Contract :minting,transfering,burning,redeeming etc.
* Finally Going To [SnowTrace](https://testnet.snowtrace.io/)For Seeing The Transactions Permormed By Pasting The Contract Address
* All The Contracts Has Been Provided With The Project So Feel Free To Use Them As Template Or As Reference Study Material
* Dont Forget to Add Your Private Key In env File And Rename That File To ".env"
* After That You Guys Are Good To Deploy Your Contracts To Fuji TestNetWork
## Logic
The Store Is Made Alive By Using Struct To Store The Information Of Players And 
## Executing Programme
Inorder For Coding and Running The Comands You Can Use Ofline IDE's Like [Visual Code Studio](https://code.visualstudio.com/) Or You Can Code Your Smart Contract Using Online IDE's Like [Remix](https://remix.ethereum.org/):
* First You Need To Install NodeJs On Your System You Can Download nodejs From [here](https://nodejs.org/)
* Next You need To install all The Dependecies Needed For Deploying The Contract For that Run:
````
npm i
````
* After You Coded Your Contract Or Pasted the One Provided You Need To Compile Your ERC20 tokenContract
````
npx harhat compile
````
* after Successful Compilation With no Error You Can Deploy your Contract to Fuji Network By Running:
````
npx hardhat run scripts/deploy.cjs --network fuji
````
* Next You Can Verify Your Contract That Deployed To TestNetwork by Passing:
````
npx hardhat verify --network fuji  [YOUR_TOKEN_ADDRESS] "[CONTRUCTOR ARGUEMENT]"
````
* After that Go To [Remix](https://remix.ethereum.org/) And Call The Deployed Contract Using Contract Address Of Contract And Injecting By Metamask
* For Other Details Of Net Work Follow Below Info
````
Name:Avalanche Fuji C-Chain
RPC URL: https://api.avax-test.network/ext/bc/C/rpc
Chain ID:43113
Currency Symbol:AVAX
Explorer: https://testnet.snowtrace.io/
````
## INTERACT With Store
* You Can mint DGN Token Using Owners Account
* You Can Get Receuitment List And See The details Of Players by Calling Fn ListRecruits()
* Redeem Player By Passing The ID Of The Player using RedeemPlayers(ID)
* See The Redeemed Player Details By Calling Function RecruitedPlayers()
* Track The Performed Transaction in [SnowTrace](https://testnet.snowtrace.io/)
## Explore Your Creativity
*Ofcourse This Is Just And Basic Template That You Can Play With You Can Add Different Functions,Player Name,Button And Bring Your Creativity To Life*
## Help
* There Are Many Chances We You Encounter Error Either You Can Google is As Most Of The Errors Are Solved Before There OR
 Feel Free To Contact Me On My Gmail For Futher Clarification About The Project:
````
iamoneofthechoosen1@gmail.com
````

## Authors

Dabi 
[@Dabi](iamoneofthechoosen1@gmial.com)


## License

This project is licensed under the [Dabi] License - see the LICENSE.md file for details
