# Petra Wallet Setup Guide

## What is Petra Wallet?

**Petra** is the official Aptos blockchain wallet browser extension. It's like MetaMask, but specifically built for the Aptos blockchain. Think of it as your digital wallet to:
- Store APT tokens (Aptos coins)
- Connect to Aptos DApps
- Sign and send transactions
- Manage your digital assets securely

## Why Do You Need Petra for This Donation App?

Your donation app runs on **Aptos Testnet** and needs Petra to:
1. **Connect your wallet** - To identify who you are on the blockchain
2. **Sign transactions** - To approve your donations
3. **Send APT tokens** - To complete the donation

Without Petra installed, the "Connect Wallet" button will show an alert asking you to install it.

## How to Install Petra Wallet

### Step 1: Install the Extension

**For Chrome/Brave/Edge:**
1. Go to the [Chrome Web Store](https://chromewebstore.google.com/detail/petra-aptos-wallet/ejjladinnckdgjemekebdpeokbikhfci)
2. Click "Add to Chrome"
3. Confirm installation

**For Firefox:**
1. Go to [Firefox Add-ons Store](https://addons.mozilla.org/en-US/firefox/addon/petra-aptos-wallet/)
2. Click "Add to Firefox"
3. Confirm installation

### Step 2: Create Your Wallet

1. Click the Petra extension icon in your browser
2. Click "Create a new wallet" or "Get started"
3. **IMPORTANT:** Create a strong password and save it
4. **CRITICAL:** Write down your 12-word seed phrase in a safe place
   - Never share this with anyone
   - Anyone with this phrase can access your wallet
   - Store it offline (on paper is best)

### Step 3: Switch to Testnet (Important!)

For this donation app, you need testnet tokens:

1. Open Petra wallet
2. Look for network settings (usually at the bottom)
3. Switch to **"Testnet"** (not Mainnet)
4. This allows you to get free test APT for testing

### Step 4: Get Testnet APT Tokens

1. After switching to Testnet, click on "Receive" in Petra
2. Copy your wallet address
3. Go to [Aptos Faucet](https://faucet.testnet.aptoslabs.com/)
4. Paste your address and click "Send me test coins"
5. Wait a few seconds and refresh Petra
6. You should see test APT in your wallet

## How to Use Petra with the Donation App

### First Time Setup:

1. **Visit** http://localhost:3000 (or your deployed site)
2. **Click** "Connect Wallet" button
3. **Petra will pop up** asking for permission
4. **Click** "Connect" or "Approve"
5. You should see "Connected: 0x..." message
6. Now you're ready to donate!

### Making a Donation:

1. **First**, click "Initialize DonationBox" (only needed once)
2. **Enter** the amount you want to donate (in APT)
3. **Click** "💰 Donate"
4. **Petra will pop up** showing transaction details
5. **Review** the amount and gas fee
6. **Click** "Approve" or "Confirm"
7. **Wait** for transaction confirmation
8. **See** your donation reflected in the total!

## Troubleshooting

### "Please install Petra wallet" error:
- Make sure Petra is installed and enabled
- Refresh the page
- Check if Petra is unlocked (open it and enter your password)

### "Insufficient balance" error:
- Get more test APT from the faucet
- Make sure you're on Testnet (not Mainnet)
- Wait a minute after requesting faucet tokens

### Can't connect wallet:
- Make sure Petra is unlocked
- Check browser permissions for the extension
- Try disconnecting and reconnecting

### Transaction failed:
- Check you have enough APT for gas fees
- Ensure the DonationBox is initialized
- Look at the browser console for error details

## Security Tips

✅ **DO:**
- Keep your seed phrase completely private
- Store it in a safe, physical location
- Use a strong, unique password
- Double-check transaction amounts before confirming

❌ **DON'T:**
- Share your seed phrase with anyone
- Take screenshots of your seed phrase
- Store seed phrase on your computer
- Click suspicious links claiming to be "Petra support"

## Important Note

This app uses **Testnet** - which means all transactions use **fake test tokens** with no real value. This is perfect for testing your donation app before going live on mainnet.

## Links

- **Petra Wallet**: https://petra.app
- **Aptos Faucet**: https://faucet.testnet.aptoslabs.com/
- **Aptos Docs**: https://aptos.dev
- **Download Petra**: https://petra.app/developers

## Need Help?

- Check [Petra Documentation](https://petra.app/docs/use)
- Visit [Aptos Discord](https://discord.gg/aptoslabs)
- Read [Aptos Developer Docs](https://aptos.dev/docs)

