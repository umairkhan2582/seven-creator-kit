# ❓ FAQ — Seven Creator Kit

---

## About Seven Chain

**What is Seven Chain?**
Seven Chain (Chain ID: 70007) is a full EVM-compatible L1 blockchain that powers the [TheSeven.meme](https://theseven.meme) trading platform. It has real block production, a working bridge from BSC, a public RPC endpoint, and a block explorer. It's not a fork of another launchpad — it's its own blockchain.

**Is Seven Chain real / live?**
Yes. It has been running continuously with zero unplanned downtime since March 2026. You can verify blocks at [theseven.meme/blockchain/explorer](https://theseven.meme/blockchain/explorer) right now.

**What's the RPC URL?**
`https://theseven.meme/api/seven-chain/jsonrpc` — works with MetaMask, Hardhat, Foundry, ethers.js, and viem.

**Is Seven Chain EVM compatible?**
Yes. Any Solidity contract that runs on Ethereum or BSC will run on Seven Chain. Chain ID is 70007.

---

## Claiming SEVEN

**Who can claim?**
Anyone who deployed a token on pump.fun or four.meme. You need to prove you're the creator (deployer wallet signature).

**How much SEVEN can I earn?**
Between 1 SEVEN and 25 SEVEN depending on your token's holder count and lifetime volume. See the reward tiers in [CLAIM.md](CLAIM.md).

**Does my token have to still be trading?**
No. Dead tokens, rugged tokens, bonded/graduated tokens — all eligible, as long as they reached the minimum (50 holders, $500 lifetime volume).

**Can I claim multiple tokens?**
Yes — one claim per token contract. If you deployed 5 tokens, you can claim 5 times.

**Is there a deadline?**
No set deadline, but reward amounts and tiers can change. Claim early.

**What is SEVEN worth?**
SEVEN is the native token of Seven Chain. It trades on [theseven.meme/spot/seven](https://theseven.meme/spot/seven) using an AMM-style dynamic pricing model.

---

## Deploying a Token

**Do I need to know Solidity?**
No. The contract in `contracts/MemeToken.sol` is ready to deploy. You just fill in `.env` and run `npm run deploy`.

**How much does it cost to deploy?**
Gas on Seven Chain is paid in SEVEN. A standard ERC-20 deployment costs a small fraction of a SEVEN. Get test SEVEN from the [faucet](https://theseven.meme/developers#faucet) before deploying.

**Can I deploy the same name/symbol as my pump.fun token?**
Yes. There's no namespace collision enforcement. You can deploy `PEPE` even if PEPE exists on Ethereum or Solana.

**Can I mint more tokens after deploy?**
The default `MemeToken.sol` mints the full supply to the deployer on deploy — there's no ongoing mint function. If you want mintability, you can add it to the contract before deploying.

**How do I list my token for trading?**
After deploying, go to [theseven.meme/launchpad](https://theseven.meme/launchpad) and submit your contract address. The launchpad creates a trading pair automatically.

---

## Revamping from pump.fun / four.meme

**Do I have to abandon my pump.fun token?**
No. Your pump.fun token stays exactly as it is. You're adding a Seven Chain venue, not replacing the original.

**Will my pump.fun holders be angry?**
No — you're giving them more options, not taking anything away. The narrative is expansion, not abandonment.

**How do I airdrop my pump.fun holders on Seven Chain?**
1. Export your pump.fun holder list (wallet addresses + balances)
2. Deploy your token on Seven Chain
3. Send tokens to each eligible wallet

We'll have an airdrop tool available soon at the [seven-airdrop](https://github.com/umairkhan2582/seven-airdrop) repo.

**What about four.meme tokens specifically?**
Four.meme is BSC-based. Seven Chain has a live BSC → Seven Chain bridge. This makes four.meme migrations smoother — your community already has BSC wallets and can bridge BNB over in minutes.

---

## Validators & Staking

**Can I become a validator and run my token community at the same time?**
Yes. Validators are just node operators — there's no conflict with being a token creator. Running a validator earns you block rewards (0.0003 SEVEN per block) on top of whatever your token earns.

**How do I apply as a validator?**
Go to [theseven.meme/become-validator](https://theseven.meme/become-validator). Registration is automatic via heartbeat — no approval process.

---

## Getting Help

**Telegram:** [t.me/SevenBlockChain](https://t.me/SevenBlockChain) — fastest response
**Explorer:** [theseven.meme/blockchain/explorer](https://theseven.meme/blockchain/explorer)
**Docs:** [theseven.meme/developers](https://theseven.meme/developers)
**GitHub:** [github.com/umairkhan2582](https://github.com/umairkhan2582)
