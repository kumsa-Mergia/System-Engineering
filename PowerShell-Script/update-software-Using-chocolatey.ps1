# Install Chocolatey if not already installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Set-ExecutionPolicy Bypass -Scope Process -Force;
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    Write-Output "Chocolatey installed."
} else {
    Write-Output "Chocolatey is already installed."
}

# Define a list of packages to install or update
$packages = @("git", "7zip", "notepadplusplus")

# Install or update each package
foreach ($package in $packages) {
    choco install $package -y --force
    Write-Output "$package installed or updated successfully."
}
