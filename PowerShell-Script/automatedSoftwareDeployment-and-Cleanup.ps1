# Define software name and installer path
$softwareName = "Example Software"
$installerPath = "C:\Installers\ExampleSoftwareSetup.exe"

# Check if the software is already installed
$installedSoftware = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $softwareName }

if (!$installedSoftware) {
    Write-Output "$softwareName is not installed. Proceeding with installation."

    # Install the software
    if (Test-Path -Path $installerPath) {
        Start-Process -FilePath $installerPath -ArgumentList "/silent" -Wait
        Write-Output "$softwareName installation completed."
    } else {
        Write-Output "Installer file not found at $installerPath"
    }
} else {
    Write-Output "$softwareName is already installed."
}

# Clean up old installer files
$installerFolder = "C:\Installers"
$daysOld = 30

Write-Output "Cleaning up old installer files in $installerFolder older than $daysOld days."
Get-ChildItem -Path $installerFolder -File | Where-Object {
    $_.LastWriteTime -lt (Get-Date).AddDays(-$daysOld)
} | ForEach-Object {
    Remove-Item -Path $_.FullName -Force
    Write-Output "Deleted old installer: $($_.FullName)"
}
Write-Output "Cleanup completed."
