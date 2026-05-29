import { ethers } from "hardhat";
import * as dotenv from "dotenv";
dotenv.config();

async function main() {
  const name   = process.env.TOKEN_NAME   || "MyMemeToken";
  const symbol = process.env.TOKEN_SYMBOL || "MEME";
  const supply = process.env.TOTAL_SUPPLY || "1000000000";

  const [deployer] = await ethers.getSigners();

  console.log("─────────────────────────────────────────");
  console.log("  Seven Chain Token Deployer");
  console.log("─────────────────────────────────────────");
  console.log(`  Network:   ${(await ethers.provider.getNetwork()).name} (${(await ethers.provider.getNetwork()).chainId})`);
  console.log(`  Deployer:  ${deployer.address}`);
  console.log(`  Balance:   ${ethers.formatEther(await ethers.provider.getBalance(deployer.address))} SEVEN`);
  console.log(`  Token:     ${name} ($${symbol})`);
  console.log(`  Supply:    ${Number(supply).toLocaleString()}`);
  console.log("─────────────────────────────────────────");

  const Token = await ethers.getContractFactory("MemeToken");
  const token = await Token.deploy(name, symbol, BigInt(supply), deployer.address);
  await token.waitForDeployment();

  const address = await token.getAddress();

  console.log("");
  console.log("✅ Token deployed!");
  console.log(`   Contract:  ${address}`);
  console.log(`   Explorer:  https://theseven.meme/blockchain/explorer/address/${address}`);
  console.log(`   Launchpad: https://theseven.meme/launchpad`);
  console.log("");
  console.log("Next steps:");
  console.log("  1. List your token at https://theseven.meme/launchpad");
  console.log("  2. Claim your SEVEN at https://theseven.meme/claim");
  console.log("  3. Announce in Telegram: https://t.me/SevenBlockChain");
  console.log("─────────────────────────────────────────");
}

main().catch((e) => { console.error(e); process.exit(1); });
