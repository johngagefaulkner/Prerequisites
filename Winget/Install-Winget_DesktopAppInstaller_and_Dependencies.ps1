$ProgressPreference = 'SilentlyContinue'
$ErrorActionPreference = 'Stop'

Write-Host "[ STEP 1: Downloading Installers ]" -ForegroundColor Cyan
Write-Host "Downloading WinGet and its dependencies, please wait..."

Write-Host "Downloading Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle... " -NoNewline
Invoke-WebRequest -Uri https://aka.ms/getwinget -OutFile Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
Write-Host "Done!" -ForegroundColor Green

Write-Host "Downloading VCLibs.x64.14.00.Desktop.appx... " -NoNewline
Invoke-WebRequest -Uri "https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx"-OutFile Microsoft.VCLibs.x64.14.00.Desktop.appx
Write-Host "Done!" -ForegroundColor Green

Write-Host "Downloading Microsoft.UI.Xaml.2.7.x64.appx... " -NoNewline
Invoke-WebRequest -Uri "https://github.com/microsoft/microsoft-ui-xaml/releases/download/v2.7.3/Microsoft.UI.Xaml.2.7.x64.appx" -OutFile Microsoft.UI.Xaml.2.7.x64.appx
Write-Host "Done!" -ForegroundColor Green

Write-Host
Write-Host "[ Step 2: Installation ]" -ForegroundColor Cyan
Read-Host -Prompt "Press Enter to continue"
Write-Host "Installing WinGet and its dependencies, please wait..."

Write-Host "Installing Microsoft.VCLibs.x64.14.00.Desktop.appx... "
Add-AppxPackage Microsoft.VCLibs.x64.14.00.Desktop.appx
Write-Host "Done!" -ForegroundColor Green

Write-Host "Installing Microsoft.UI.Xaml.2.7.x64.appx... "
Add-AppxPackage Microsoft.UI.Xaml.2.7.x64.appx
Write-Host "Done!" -ForegroundColor Green

Write-Host "Installing Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle... "
Add-AppxPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
Write-Host "Done!" -ForegroundColor Green

Write-Host
Write-Host "Operation completed successfully!"
Read-Host -Prompt "Press Enter to exit"
