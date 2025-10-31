# Installing Aptos CLI on Windows

## Option 1: Using Pre-built Binary (Recommended for Windows)

### Download from GitHub Releases

1. Go to: https://github.com/aptos-labs/aptos-core/releases
2. Download the latest `aptos-cli-x.x.x-windows-x86_64.zip`
3. Extract the `aptos.exe` file
4. Move it to a folder in your PATH (e.g., `C:\Windows\System32`) or create a custom folder

### Add to PATH

1. Create a folder for binaries (e.g., `C:\bin`)
2. Copy `aptos.exe` to that folder
3. Add the folder to your Windows PATH:
   - Open System Properties → Advanced → Environment Variables
   - Find "Path" under System variables
   - Click Edit → New → Add `C:\bin`
   - Click OK to save

### Verify Installation

```powershell
aptos --version
```

---

## Option 2: Install via Cargo (if Rust is installed)

If you have Rust/Cargo installed:

```powershell
cargo install --git https://github.com/aptos-labs/aptos-core.git aptos --tag aptos-cli-latest
```

---

## Option 3: Using PowerShell Script

Run in PowerShell (as Administrator):

```powershell
# Download latest release
$latestRelease = Invoke-RestMethod -Uri "https://api.github.com/repos/aptos-labs/aptos-core/releases/latest"
$asset = $latestRelease.assets | Where-Object { $_.name -like "*windows*" -and $_.name -like "*x86_64.zip" } | Select-Object -First 1
$downloadUrl = $asset.browser_download_url
$outputPath = "$env:TEMP\aptos-cli.zip"

# Download
Invoke-WebRequest -Uri $downloadUrl -OutFile $outputPath

# Extract
Expand-Archive -Path $outputPath -DestinationPath "C:\bin" -Force

# Add to PATH (requires admin)
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\bin", [EnvironmentVariableTarget]::Machine)

# Verify
aptos --version
```

---

## Next Steps After Installation

1. **Create Aptos Profile**:
```powershell
cd D:\jec\aptos-donate\contract
aptos init --network testnet --profile my_profile
```

2. **Fund Your Account** (from faucet):
```powershell
aptos account fund-with-faucet --account default --amount 100000000
```

3. **Compile and Publish**:
```powershell
aptos move compile --named-addresses aptos_donate=default
aptos move publish --named-addresses aptos_donate=default --profile default
```

---

## Troubleshooting

### "aptos is not recognized"
- Make sure aptos.exe is in your PATH
- Restart PowerShell after adding to PATH
- Verify with: `Get-Command aptos`

### "Permission denied"
- Run PowerShell as Administrator
- Check file permissions

### Alternative: Use Docker

If installation is problematic, use Docker:

```powershell
docker pull aptoslabs/tools:latest
docker run --rm -v ${PWD}:/project -w /project aptoslabs/tools:latest aptos move publish --named-addresses aptos_donate=default
```

---

## Quick Reference

- **Aptos Releases**: https://github.com/aptos-labs/aptos-core/releases
- **Aptos Docs**: https://aptos.dev/docs/tools/aptos-cli/
- **Aptos Discord**: https://discord.gg/aptoslabs

