# Define folders to clean
$foldersToClean = @("C:\Windows\Temp", "C:\Users\YourUsername\AppData\Local\Temp")
$daysOld = 7

# Remove files older than the threshold in temporary folders
foreach ($folder in $foldersToClean) {
    if (Test-Path -Path $folder) {
        Get-ChildItem -Path $folder -File -Recurse | Where-Object {
            $_.LastWriteTime -lt (Get-Date).AddDays(-$daysOld)
        } | ForEach-Object {
            Remove-Item -Path $_.FullName -Force -ErrorAction SilentlyContinue
            Write-Output "Deleted: $($_.FullName)"
        }
        Write-Output "Cleanup completed for $folder."
    }
}

# Clear unnecessary system files
Write-Output "Removing unnecessary system files..."
Start-Process -FilePath cleanmgr.exe -ArgumentList "/sagerun:1" -Wait
Write-Output "System cleanup completed."
