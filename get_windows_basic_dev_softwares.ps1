# to install all the software using winget
# only pre-requisite is to be elevated mode & have winget running


# Start transcript to log script output
# Start-Transcript -Path "C:\Users\"

# # Print message to indicate Winget download is starting
# Write-Host "Downloading WinGet and its dependencies..."

# # Download Winget and its dependencies
# $progressPreference = 'silentlyContinue'
# Invoke-WebRequest -Uri https://aka.ms/getwinget -OutFile Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
# Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx -OutFile Microsoft.VCLibs.x64.14.00.Desktop.appx
# Invoke-WebRequest -Uri https://github.com/microsoft/microsoft-ui-xaml/releases/download/v2.8.6/Microsoft.UI.Xaml.2.8.x64.appx -OutFile Microsoft.UI.Xaml.2.8.x64.appx
# Add-AppxPackage Microsoft.VCLibs.x64.14.00.Desktop.appx
# Add-AppxPackage Microsoft.UI.Xaml.2.8.x64.appx
# Add-AppxPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle

# # Print message to indicate Winget download is complete
# Write-Host "WinGet and its dependencies downloaded successfully."

# Check if the script is running with administrative privileges
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # Print message to indicate elevation is required
    Write-Host "This script requires administrative privileges. Please run it as an administrator."
    exit
}

# Install all the software using Winget
Write-Host "Installing software packages using Winget..."
winget install --id=OpenJS.NodeJS.LTS -e
Write-Host "Node Installed."
winget install --id=Microsoft.VisualStudioCode -e
Write-Host "VSCODE Installed."
winget install --id=Git.Git -e
Write-Host "Git Installed."
winget install --id=Google.Chrome -e
Write-Host "Chrome Installed."
winget install --id=7zip.7zip -e
Write-Host "Zipper Installed."
winget install --id=ImageMagick.ImageMagick -e
Write-Host "Imagic Installed."
winget install --id=Microsoft.PowerShell -e
Write-Host "Updated pw Installed."
winget install --id=Postman.Postman  -e
Write-Host "Postman Installed."
winget install --id=PostgreSQL.pgAdmin  -e
Write-Host "PGAdmin Installed."
# all done, happy hacking!
Write-Host "Software installation completed."

# Stop transcript to end logging
Stop-Transcript
