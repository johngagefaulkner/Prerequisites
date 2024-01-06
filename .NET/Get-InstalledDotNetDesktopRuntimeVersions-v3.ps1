$ProgressPreference = 'SilentlyContinue'
$ErrorActionPreference = 'Stop'
Clear-Host
Write-Host "[ Get-InstalledDotNetDesktopRuntimeVersions.ps1 ]"
Write-Host "Obtaining a list of all installed .NET Desktop App Runtime versions, please wait... "
Write-Host

function Get-InstalledDotNetDesktopRuntimeVersions() {
    $installedVersions = Get-ChildItem -Path "C:\Program Files\dotnet\shared\Microsoft.WindowsDesktop.App" | Select-Object -ExpandProperty Name
    return $installedVersions
}

$locallyInstalledVersions = Get-InstalledDotNetDesktopRuntimeVersions

foreach ($dotNetRuntime in $locallyInstalledVersions) {
    Write-Host " - Installed: " -NoNewline
    Write-Host $dotNetRuntime -ForegroundColor Green
}

Write-Host
