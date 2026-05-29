# ✅ Token Launch Checklist — Seven Chain

> Complete every item before, during, and after your launch.
> Check them off as you go. Don't skip anything in "Before."

---

## BEFORE Launch

### Token
- [ ] Decided on name and symbol (keep it short — 3-5 chars)
- [ ] Decided on total supply (1B is standard for meme tokens)
- [ ] Copied `.env.example` to `.env` and filled it in
- [ ] Ran `npm run compile` — no errors
- [ ] Tested deploy on BSC Testnet first (`npm run deploy:bscTestnet`)

### Wallet
- [ ] Deployer wallet has SEVEN for gas (get from [faucet](https://theseven.meme/developers#faucet) or bridge BNB)
- [ ] Deployer private key is in `.env` — NOT committed to GitHub
- [ ] `.env` is in `.gitignore` — verified

### MetaMask Setup
- [ ] Added Seven Chain to MetaMask
  - Network Name: Seven Chain
  - RPC URL: https://theseven.meme/api/seven-chain/jsonrpc
  - Chain ID: 70007
  - Symbol: SEVEN
  - Explorer: https://theseven.meme/blockchain/explorer

### Community
- [ ] Telegram group created (or existing group notified)
- [ ] Twitter/X account ready
- [ ] Announcement drafted (use [marketing/telegram-announce.md](marketing/telegram-announce.md))
- [ ] Tweets prepared (use [marketing/tweet-templates.md](marketing/tweet-templates.md))

---

## DURING Launch

- [ ] Run `npm run deploy` — copy contract address from output
- [ ] Verify contract on explorer: https://theseven.meme/blockchain/explorer
- [ ] List token on launchpad: https://theseven.meme/launchpad
- [ ] Post Telegram announcement (pinned message)
- [ ] Post Tweet 1 (The Announcement)
- [ ] Post in Seven Chain Telegram: https://t.me/SevenBlockChain

---

## AFTER Launch (First 24 Hours)

- [ ] Claim your free SEVEN: https://theseven.meme/claim
- [ ] Share your referral link to recruit other creators
- [ ] Post Tweet 2 (The Hook) — 2 hours after launch
- [ ] Airdrop early supporters (if revamping from pump.fun/four.meme)
- [ ] Monitor trading activity on explorer
- [ ] Post Day 1 update in Telegram

---

## AFTER Launch (First Week)

- [ ] Post Tweet 3 — FOMO push on Day 3
- [ ] Post Day 3 Telegram update (volume, holders, SEVEN earned)
- [ ] Consider running a staking incentive
- [ ] Apply as a validator to earn block rewards: https://theseven.meme/become-validator
- [ ] Post Day 7 Telegram milestone update
- [ ] Plan next catalyst (burn event, partnership, new listing)

---

## Common Mistakes to Avoid

| Mistake | Fix |
|---|---|
| Committing `.env` with private key | Add `.env` to `.gitignore` immediately |
| Not testing on testnet first | Always run `npm run deploy:bscTestnet` first |
| Announcing before listing on launchpad | List first, announce second |
| Going quiet after day 1 | Schedule Day 3 and Day 7 posts in advance |
| Forgetting to claim SEVEN | Do it on launch day — theseven.meme/claim |
| Not pinning Telegram message | Pin the announcement so new members see it |
