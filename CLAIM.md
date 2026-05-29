# 💰 How to Claim Your Free SEVEN

> You created a token on pump.fun or four.meme. That makes you eligible for free SEVEN tokens — just for declaring your token on Seven Chain.

---

## What You Need

- The **contract address** of your pump.fun or four.meme token
- The **wallet** you used to deploy it (MetaMask, Phantom, or any EVM wallet)
- 60 seconds

---

## Step-by-Step — pump.fun Creators

### 1. Find Your Token Contract Address
Go to **pump.fun** → your token → copy the contract address from the URL or token page.

It looks like: `6p7eTjwKNb3cHBMi1kwAcQj3Mw7cKFNjwVS...` (Solana address)

### 2. Go to the Claim Page
Visit **[theseven.meme/claim](https://theseven.meme/claim)**

### 3. Paste Your Contract Address
Enter your pump.fun token CA in the input field. Our system will:
- Look up your token on pump.fun's API
- Check holder count and lifetime volume
- Determine your reward tier automatically

### 4. Connect Your Creator Wallet
Connect the wallet that **deployed** the token. This is how we verify you're the real creator — not just a holder.

> If you deployed from a Phantom wallet (Solana), you can still verify using the linked EVM wallet, or sign a message with the Solana keypair.

### 5. Sign a Verification Message
You'll be asked to sign a simple message like:

```
I am declaring my token [ADDRESS] on Seven Chain.
Wallet: [YOUR_WALLET]
Timestamp: [TIME]
```

**This costs zero gas.** It's just a signature — no transaction is sent.

### 6. Receive SEVEN Instantly
Once verified, SEVEN tokens are credited to your wallet on Seven Chain. They appear immediately in your wallet when you add Seven Chain to MetaMask.

**Add Seven Chain to MetaMask:**
| Field | Value |
|---|---|
| Network Name | Seven Chain |
| RPC URL | https://theseven.meme/api/seven-chain/jsonrpc |
| Chain ID | 70007 |
| Symbol | SEVEN |
| Explorer | https://theseven.meme/blockchain/explorer |

---

## Step-by-Step — four.meme Creators

### 1. Find Your Token Contract Address
Go to **four.meme** → your token → copy the BSC contract address.

It looks like: `0x1234...abcd` (EVM address, starts with 0x)

### 2–6. Same steps as above
The process is identical. Four.meme tokens are BSC tokens (EVM), so wallet connection is direct — connect MetaMask with the deployer wallet.

---

## Reward Tiers

| Tier | Holders | Volume | SEVEN |
|---|---|---|---|
| 🥉 Spark | 50+ | $500+ | 1 SEVEN |
| 🥈 Flame | 200+ | $5K+ | 3 SEVEN |
| 🥇 Blaze | 1,000+ | $50K+ | 10 SEVEN |
| 💎 Inferno | 5,000+ | $500K+ | 25 SEVEN |

Holder counts and volume are pulled directly from pump.fun's API and BSC RPC — no manual review, instant result.

---

## Referral Bonus

After claiming, you get a personal referral link. Share it with other creators.

- Every creator who claims through your link = **+0.5 SEVEN** to you
- No limit on referrals
- Credited automatically

---

## What Happens After You Claim

1. Your token gets a listing page at `theseven.meme/launchpad/[SYMBOL]`
2. Your community can find it on the Seven Chain explorer
3. You can launch a trading pair at `theseven.meme/spot`
4. Your token is bridgeable via the BSC → Seven Chain bridge

Want to fully revamp and relaunch? See [REVAMP.md](REVAMP.md).

---

## FAQ

**Q: Can I claim if my token rugged?**
Yes. Rug status on pump.fun doesn't affect eligibility. If it had 50+ holders, you qualify.

**Q: My token bonded/graduated — can I still claim?**
Yes. Bonded tokens are eligible.

**Q: Can I claim multiple tokens?**
Yes — one claim per token contract. If you deployed 3 tokens, you can claim 3 times.

**Q: Is there a deadline?**
No deadline currently. But reward tiers and amounts can change — claim early.

**Q: What if my pump.fun token doesn't meet the minimum?**
50 holders is a low bar. If you genuinely launched and got some traction, you likely qualify. Check your token on pump.fun's explorer.
