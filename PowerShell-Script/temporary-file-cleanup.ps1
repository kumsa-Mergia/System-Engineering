# Define the folders to clean up and the age threshold (in days)
$foldersToClean = @("C:\Windows\Temp", "C:\Users\YourUsername\AppData\Local\Temp", "C:\Logs")
$daysOld = 7

# Loop through each folder and delete files older than the threshold
foreach ($folder in $foldersToClean) {
    if (Test-Path -Path $folder) {
        Write-Output "Cleaning up folder: $folder"
        
        # Find and remove files older than the specified number of days
        Get-ChildItem -Path $folder -File -Recurse | Where-Object {
            $_.LastWriteTime -lt (Get-Date).AddDays(-$daysOld)
        } | ForEach-Object {
            Remove-Item -Path $_.FullName -Force -ErrorAction SilentlyContinue
            Write-Output "Deleted: $($_.FullName)"
        }
        
        Write-Output "Cleanup completed for $folder"
    } else {
        Write-Output "Folder not found: $folder"
    }
}

Write-Output "All folders cleaned up."
