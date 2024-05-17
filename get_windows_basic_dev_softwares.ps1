# to install all the software using winget
# only pre-requisite is to be elevated mode & have winget running

# Start transcript to log script output
# Start-Transcript -Path "C:\Users\"

# Check if the script is running with administrative privileges
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # Print message to indicate elevation is required
    Write-Host "This script requires administrative privileges. Please run it as an administrator."
    exit
}

# Install all the software using Winget
Write-Host "Installing software packages using Winget..."
winget install --id=OpenJS.NodeJS.LTS -e
winget install --id=Microsoft.VisualStudioCode -e
winget install --id=Git.Git -e
winget install --id=Google.Chrome -e
winget install --id=7zip.7zip -e
winget install --id=ImageMagick.ImageMagick -e
winget install --id=Postman.Postman  -e
winget install --id=PostgreSQL.pgAdmin  -e


Write-Host "all done, happy hacking! 😀"
Write-Host "Software installation completed."
