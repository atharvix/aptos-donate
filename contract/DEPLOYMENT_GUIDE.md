# Deploying the Donation Contract

## Current Status

Your contract is **compiled and ready** but needs to be deployed to Aptos Testnet.

**Compiled Address**: `0xc46c3ee00c354e58cff015370b6d79f3e2798eaef74711c259ebe439c8b28cbd`
**Module**: `aptos_donate::donation`
**Functions**: `initialize`, `donate`, `get_total`

---

## Prerequisites

1. **Install Aptos CLI** - See [INSTALL_APTOS_CLI.md](./INSTALL_APTOS_CLI.md)
2. **Create Aptos Profile** with testnet
3. **Fund your account** with testnet APT

---

## Deployment Steps

### Step 1: Initialize Aptos Profile

```powershell
cd D:\jec\aptos-donate\contract

# Initialize with testnet
aptos init --network testnet --profile my_profile

# This will:
# - Generate a keypair
# - Create a profile named "my_profile"
# - Ask you to save the profile location
```

### Step 2: Fund Your Account

```powershell
# Get testnet APT from faucet
aptos account fund-with-faucet --account my_profile --amount 100000000

# This gives you 100 APT for testing
```

### Step 3: Update Move.toml with Your Address

After getting your address from Step 1, update `Move.toml`:

```toml
[addresses]
aptos_donate = "YOUR_ADDRESS_HERE"  # Replace with your actual address
donation = "YOUR_ADDRESS_HERE"      # Same as above
```

### Step 4: Compile the Contract

```powershell
aptos move compile --named-addresses aptos_donate=my_profile
```

### Step 5: Publish to Testnet

```powershell
aptos move publish --named-addresses aptos_donate=my_profile --profile my_profile
```

This will:
- Upload the module to Aptos Testnet
- Return a transaction hash
- Show your module address

### Step 6: Update Frontend Config

After successful deployment, update `frontend/lib/config.ts`:

```typescript
export const MODULE_ADDRESS = 'YOUR_DEPLOYED_ADDRESS'
```

---

## Using Aptos Studio (Alternative Method)

If CLI installation is problematic:

1. Go to: https://studio.aptoslabs.com/
2. Connect your Petra wallet
3. Switch to Testnet
4. Import your contract files
5. Deploy from the web interface

---

## Verification

After deployment, verify on Aptos Explorer:

1. Go to: https://explorer.aptoslabs.com/?network=testnet
2. Search for your address
3. Verify the `donation` module appears
4. Check that `initialize` and `donate` functions are listed

---

## Testing the Deployment

1. Start your frontend:
```powershell
cd D:\jec\aptos-donate\frontend
npm run dev
```

2. Connect Petra wallet (switch to Testnet)
3. Click "Initialize DonationBox"
4. Try making a donation
5. Check transaction on explorer

---

## Troubleshooting

### "Module not found"
- Contract not deployed yet
- Wrong address in frontend config
- Wrong network (must be Testnet)

### "Insufficient balance"
- Get more testnet APT from faucet
- Account needs balance for gas + amount

### "Account not found"
- Initialize the DonationBox first
- Use the "Initialize DonationBox" button

### "Resource not found"
- DonationBox not initialized
- Wrong module address

---

## Important Notes

- **This address is already set**: `0xc46c3ee00c354e58cff015370b6d79f3e2798eaef74711c259ebe439c8b28cbd`
- **If you want to use this address**: You need the private key for it
- **If deploying to a new address**: Generate a new profile with `aptos init`

---

## Next Steps

1. ✅ Contract compiled
2. ⏳ Deploy to testnet
3. ⏳ Update frontend config
4. ⏳ Test with Petra wallet

Once deployed, your DApp will be fully functional!

