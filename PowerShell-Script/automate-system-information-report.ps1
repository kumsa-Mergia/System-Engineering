# Get system information
$cpu = Get-WmiObject -Class Win32_Processor | Select-Object -Property Name, LoadPercentage
$memory = Get-WmiObject -Class Win32_OperatingSystem | Select-Object -Property FreePhysicalMemory, TotalVisibleMemorySize
$disk = Get-WmiObject -Class Win32_LogicalDisk -Filter "DriveType=3" | Select-Object -Property DeviceID, FreeSpace, Size

# Create a report file
$reportPath = "C:\SystemReport.txt"
$reportContent = @"
System Report - $(Get-Date)

CPU:
Name: $($cpu.Name)
Load Percentage: $($cpu.LoadPercentage)%

Memory:
Total Memory (MB): $([math]::round($memory.TotalVisibleMemorySize / 1KB, 2))
Free Memory (MB): $([math]::round($memory.FreePhysicalMemory / 1KB, 2))

Disk Usage:
@($disk | ForEach-Object { "Drive $($_.DeviceID): $([math]::round($_.FreeSpace / 1GB, 2)) GB free of $([math]::round($_.Size / 1GB, 2)) GB" })
"@

# Save the report to a file

$reportContent | Out-File -FilePath $reportPath

Write-Output "System report saved to $reportPath"
