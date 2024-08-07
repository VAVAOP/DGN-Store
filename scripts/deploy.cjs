const hre = require("hardhat");

async function main() {
const Owner ="0xe7785AC2efB7034BBcBD841394CE8813F09E5cEC";
  // Get the Points smart contract
  const Degen = await hre.ethers.getContractFactory("Degen");
  // Deploy it
  const degen = await Degen.deploy(Owner);
  await degen.deployed();
  // Display the contract address
  console.log(`Degen token deployed to ${degen.address}`);
 
}

// Hardhat recommends this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

