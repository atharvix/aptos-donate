# Quick Start Guide

## 🚀 Run the Donation App in 3 Steps

### Step 1: Navigate to Frontend
```bash
cd frontend
```

### Step 2: Install Dependencies (if not done already)
```bash
npm install
```

### Step 3: Start Development Server
```bash
npm run dev
```

### Step 4: Open Browser
Visit: http://localhost:3000

---

## 📋 What Happens Next?

1. **Install Petra Wallet** (if you haven't)
   - Download from: https://petra.app
   - See [PETRA_WALLET_SETUP.md](./PETRA_WALLET_SETUP.md) for details

2. **Get Testnet APT**
   - Go to: https://faucet.testnet.aptoslabs.com/
   - Switch Petra to Testnet mode
   - Request test coins

3. **Connect & Donate**
   - Click "Connect Wallet" on the app
   - Approve in Petra popup
   - Click "Initialize DonationBox" (first time only)
   - Enter amount and click "💰 Donate"

---

## ❌ Common Mistakes

### ❌ Wrong Directory
```bash
# ❌ DON'T do this from root folder
PS D:\jec\aptos-donate> npm run dev
```

### ✅ Correct Directory
```bash
# ✅ DO this - navigate to frontend first
PS D:\jec\aptos-donate> cd frontend
PS D:\jec\aptos-donate\frontend> npm run dev
```

---

## 🛠️ All Commands

```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build

# Start production server
npm start

# Run linter
npm run lint
```

---

## 📖 More Help

- **Petra Setup**: [PETRA_WALLET_SETUP.md](./PETRA_WALLET_SETUP.md)
- **Deployment**: [DEPLOYMENT.md](./DEPLOYMENT.md)
- **Full README**: [README.md](./README.md)

---

## 🐛 Troubleshooting

### "Port 3000 is in use"
```bash
# Kill the existing process
taskkill /F /IM node.exe

# Or use a different port
npm run dev -- -p 3001
```

### "Cannot find module"
```bash
# Delete and reinstall
rm -rf node_modules package-lock.json
npm install
```

### "Wallet not connecting"
- Make sure Petra is installed
- Check Petra is unlocked
- Switch to Testnet in Petra settings

---

## 🎉 Success!

If you see this in terminal:
```
✓ Ready in 1074ms
- Local: http://localhost:3000
```

You're good to go! Open http://localhost:3000 in your browser.

