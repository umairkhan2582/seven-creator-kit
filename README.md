<div align="center">

  <img src="https://theseven.meme/logo.png" width="100" alt="Seven Chain" />

  # 🚀 seven-creator-kit

  **Your pump.fun or four.meme token isn't dead — bring it to Seven Chain and earn SEVEN**

  [![Chain ID](https://img.shields.io/badge/Chain%20ID-70007-FFD700?style=for-the-badge&logo=ethereum&logoColor=black)](https://theseven.meme/developers)
  [![Claim SEVEN](https://img.shields.io/badge/Claim-Free%20SEVEN-brightgreen?style=for-the-badge)](https://theseven.meme/claim)
  [![Mainnet](https://img.shields.io/badge/Status-Mainnet%20Live-brightgreen?style=for-the-badge)](https://theseven.meme)
  [![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](LICENSE)
  [![GitHub Topic](https://img.shields.io/badge/Topic-seven--chain-yellow?style=for-the-badge)](https://github.com/topics/seven-chain)

  [**Claim Your SEVEN →**](https://theseven.meme/claim) · [**Launch a Token**](https://theseven.meme/launchpad) · [**Explorer**](https://theseven.meme/blockchain/explorer) · [**Buy SEVEN**](https://theseven.meme/spot/seven) · [**Telegram**](https://t.me/SevenBlockChain)

</div>

---

## 💰 Earn Free SEVEN — Just For Declaring Your Token

If you created a token on **pump.fun** or **four.meme**, you can claim free SEVEN tokens simply by proving you're the creator. No migration required. No tech skills needed. Takes 60 seconds.

| Your Token's Status | What Happens on Seven Chain |
|---|---|
| Still trading on pump.fun / four.meme | Gets a second live market on Seven Chain — double the exposure |
| Bonded / graduated | Fresh start on a new EVM chain with real trading infrastructure |
| Rugged / dead | Full revival with a new community, new launchpad, new momentum |
| Just launched | Multi-chain presence from day one — Solana/BSC + EVM L1 |

### How to Claim — 60 Seconds, Zero Gas

1. Go to **[theseven.meme/claim](https://theseven.meme/claim)**
2. Paste your pump.fun or four.meme token contract address
3. Connect the wallet you used to deploy it
4. Sign a message (proves you're the creator — signature only, no on-chain transaction, no gas cost)
5. **Receive SEVEN instantly** to your connected wallet

See [CLAIM.md](CLAIM.md) for the full step-by-step guide with screenshots.

---

## 🏆 Creator Reward Tiers

Rewards scale with your token's traction. The bigger your community, the more SEVEN you earn.

| Tier | Holders Required | Lifetime Volume | SEVEN Reward |
|---|---|---|---|
| 🥉 **Spark** | 50+ | $500+ | **1 SEVEN** |
| 🥈 **Flame** | 200+ | $5,000+ | **3 SEVEN** |
| 🥇 **Blaze** | 1,000+ | $50,000+ | **10 SEVEN** |
| 💎 **Inferno** | 5,000+ | $500,000+ | **25 SEVEN** |

**Referral bonus:** Share your personal claim link. Every creator who claims through your link earns you **+0.5 SEVEN** automatically — no cap.

---

## ⚡ Why Seven Chain vs. pump.fun / four.meme

| Feature | pump.fun | four.meme | **Seven Chain** |
|---|---|---|---|
| Chain | Solana | BSC | EVM L1 (Chain ID 70007) |
| Perpetual futures trading | ❌ | ❌ | ✅ Up to 2001× leverage |
| Token launchpad | ✅ | ✅ | ✅ Bonding curve |
| BSC bridge | ❌ | ❌ | ✅ V3 non-upgradeable |
| Earn as validator | ❌ | ❌ | ✅ Block rewards + relay fees |
| Token creator rewards | ❌ | ❌ | ✅ Free SEVEN on claim |
| Block explorer | Limited | Limited | ✅ Full explorer |
| Deploy Solidity contracts | ❌ | ❌ | ✅ Full EVM compatibility |
| Staking | ❌ | ❌ | ✅ SEVEN staking, up to 3× yield |

Seven Chain is a full L1 blockchain — not a launchpad bolted onto someone else's chain. Your token gets real block production, real validators, a real bridge, and real trading pairs on a dedicated perpetual futures platform.

---

## 🏗️ How the Relay Fee Powers the Ecosystem

When your token holders trade on Seven Chain, the platform's relay model ensures near-zero cost:

- **Validators** earn 0.0003 SEVEN per block — incentivizing chain reliability
- **Bridge solvers** earn 0.0004 BNB per settled cross-chain intent — keeping the bridge fast
- **VIP users** pay zero relay fee — only a tiny SEVEN micro-fee flows to the block validator
- **Token creators** earn SEVEN just for bringing their community to the chain

The SEVEN token is the connective tissue: validators stake it to multiply earnings, creators earn it as rewards, and traders use it as the base asset on the launchpad.

---

## 🛠️ Launch a Brand New Token

Don't have a token yet? Deploy one directly to Seven Chain (Chain ID 70007) in under 5 minutes using this kit:

```bash
# 1. Clone
git clone https://github.com/umairkhan2582/seven-creator-kit
cd seven-creator-kit

# 2. Install
npm install

# 3. Configure your token
cp .env.example .env
# Set: TOKEN_NAME, TOKEN_SYMBOL, TOTAL_SUPPLY, PRIVATE_KEY

# 4. Deploy to Seven Chain
npm run deploy

# ✅ Your token is live on Chain ID 70007
# → Verify on explorer: https://theseven.meme/blockchain/explorer
```

**No-code option:** Use the web launchpad at **[theseven.meme/launchpad](https://theseven.meme/launchpad)** — no command line, no wallet setup, browser-based deploy.

---

## 📁 What's In This Kit

| File | What it does |
|---|---|
| `contracts/MemeToken.sol` | Audited ERC-20 template — rename, customize, deploy |
| `hardhat.config.ts` | Pre-configured for Seven Chain (Chain ID 70007) — zero setup |
| `scripts/deploy.ts` | One-command deploy to Seven Chain mainnet |
| `scripts/verify.ts` | Verify contract source on Seven Chain block explorer |
| `CLAIM.md` | Full step-by-step guide for pump.fun / four.meme claim |
| `REVAMP.md` | Full revamp playbook — bring your dead token back |
| `LAUNCH_CHECKLIST.md` | Everything to do before, during, and after launch |
| `FAQ.md` | Answers to every question you'll have |
| `marketing/tweet-templates.md` | Copy-paste launch tweets — customise and post |
| `marketing/telegram-announce.md` | Telegram announcement template for your community |

---

## Network Details

| Parameter | Value |
|---|---|
| **Network Name** | Seven Chain |
| **Chain ID** | 70007 |
| **RPC URL** | `https://theseven.meme/api/seven-chain/jsonrpc` |
| **Currency Symbol** | SEVEN |
| **Block Explorer** | https://theseven.meme/blockchain/explorer |
| **Faucet** | https://theseven.meme/developers#faucet (0.1 SEVEN/day, no sign-up) |

Add Seven Chain to MetaMask in one click: [theseven.meme/developers](https://theseven.meme/developers)

---

## Hardhat Config — Ready to Copy

```typescript
// hardhat.config.ts — already included in this repo
import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

const config: HardhatUserConfig = {
  solidity: "0.8.24",
  networks: {
    sevenchain: {
      url: "https://theseven.meme/api/seven-chain/jsonrpc",
      chainId: 70007,
      accounts: [process.env.PRIVATE_KEY!],
    },
  },
};

export default config;
```

---

## Seven Chain Ecosystem

| Repo | Description |
|---|---|
| [**sevenchain**](https://github.com/umairkhan2582/sevenchain) | Developer hub — network config, Hardhat/Foundry quickstart, API docs |
| [**seven-chain-node**](https://github.com/umairkhan2582/seven-chain-node) | Validator node client — seal blocks, earn SEVEN block rewards |
| [**seven-chain-solver**](https://github.com/umairkhan2582/seven-chain-solver) | Bridge solver — fill cross-chain intents, earn 0.0004 BNB per relay |
| [**seven-creator-kit**](https://github.com/umairkhan2582/seven-creator-kit) | ← You are here — token launch toolkit |

All repositories: [`github.com/topics/seven-chain`](https://github.com/topics/seven-chain)

---

## Links

| Resource | URL |
|---|---|
| Claim SEVEN | https://theseven.meme/claim |
| Token Launchpad | https://theseven.meme/launchpad |
| Spot Trading | https://theseven.meme/spot/seven |
| Staking | https://theseven.meme/staking |
| Block Explorer | https://theseven.meme/blockchain/explorer |
| Bridge (BSC → Seven) | https://theseven.meme/bridge |
| Become a Validator | https://theseven.meme/become-validator |
| Developer Hub | https://theseven.meme/developers |
| Whitepaper | https://theseven.meme/whitepaper |
| Telegram | https://t.me/SevenBlockChain |
| Twitter / X | [@thesevendotmeme](https://x.com/thesevendotmeme) |

---

## License

MIT — fork it, share it, build on it.
