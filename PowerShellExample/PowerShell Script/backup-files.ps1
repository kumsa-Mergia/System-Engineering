# Define source and destination paths
$sourcePath = "C:\Source"
$destinationPath = "C:\Backup"

# Create the destination folder if it doesn't exist
if (!(Test-Path -Path $destinationPath)) {
    New-Item -ItemType Directory -Path $destinationPath
}

# Copy all .txt files from source to destination
Get-ChildItem -Path $sourcePath -Filter *.txt | ForEach-Object {
    Copy-Item -Path $_.FullName -Destination $destinationPath
}

Write-Output "Backup completed!"
