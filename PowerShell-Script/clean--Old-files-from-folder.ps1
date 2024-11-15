# Define folder path and age limit
$folderPath = "C:\Logs"
$daysOld = 30

# Find and remove files older than the specified number of days
Get-ChildItem -Path $folderPath -File | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-$daysOld) } | ForEach-Object {
    Remove-Item -Path $_.FullName -Force
    Write-Output "Deleted $($_.FullName)"
}

Write-Output "Cleanup completed!"
