# Deployment Guide

## Prerequisites

1. Install Petra Wallet browser extension
2. Fund your wallet with testnet APT from the [Aptos Faucet](https://faucet.testnet.aptoslabs.com/)

## Running Locally

```bash
cd frontend
npm install
npm run dev
```

Open [http://localhost:3000](http://localhost:3000)

## Building for Production

```bash
cd frontend
npm run build
npm start
```

## Deploying to Vercel

1. Push your code to GitHub
2. Import the project in Vercel
3. Select the `frontend` folder as the root directory
4. Deploy

The app will be live on Vercel's domain.

## Environment Configuration

The contract address is configured in `frontend/lib/config.ts`:

```typescript
export const MODULE_ADDRESS = '0xc46c3ee00c354e58cff015370b6d79f3e2798eaef74711c259ebe439c8b28cbd'
```

Update this if you deploy a new version of the contract.

## Smart Contract Deployment

To deploy the smart contract:

```bash
cd contract
aptos move publish --named-addresses aptos_donate=<YOUR_ADDRESS>
```

Update the `MODULE_ADDRESS` in the frontend config after deployment.

## Testing

1. Connect Petra wallet
2. Ensure you're on Aptos Testnet
3. Click "Initialize DonationBox" (first time only)
4. Make a test donation
5. Verify the total updates

## Troubleshooting

- **Wallet not connecting**: Ensure Petra is installed and unlocked
- **Transaction fails**: Check you have sufficient gas
- **Total not showing**: Initialize the contract first
- **Build errors**: Run `npm install` again

