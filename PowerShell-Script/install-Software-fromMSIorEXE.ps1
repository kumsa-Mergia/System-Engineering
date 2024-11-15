# Define the installer file path and installation parameters
$installerPath = "C:\Path\To\YourInstaller.msi"
$installParams = "/quiet /norestart" # Use appropriate parameters for silent install (for MSI or EXE)

# Check if the installer file exists
if (Test-Path -Path $installerPath) {
    # Install the software
    Start-Process -FilePath msiexec.exe -ArgumentList "/i $installerPath $installParams" -Wait
    Write-Output "Installation completed for $installerPath"
} else {
    Write-Output "Installer file not found: $installerPath"
}
