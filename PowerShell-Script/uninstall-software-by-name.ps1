# Define the software name (must match the name as it appears in Programs and Features)
$softwareName = "Example Software Name"

# Find the software by name
$software = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq $softwareName }

if ($software) {
    # Uninstall the software
    $software.Uninstall()
    Write-Output "$softwareName uninstalled successfully."
} else {
    Write-Output "$softwareName not found."
}

