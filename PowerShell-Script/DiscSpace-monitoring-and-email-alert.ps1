# Define threshold for free space (in percentage)
$freeSpaceThreshold = 10

# Email configuration
$smtpServer = "smtp.your-email.com"
$fromAddress = "alert@yourdomain.com"
$toAddress = "admin@yourdomain.com"
$subject = "Disk Space Alert"

# Get disk information
$disks = Get-WmiObject -Class Win32_LogicalDisk -Filter "DriveType=3"

# Loop through each disk and check free space
foreach ($disk in $disks) {
    $freeSpacePercentage = ($disk.FreeSpace / $disk.Size) * 100

    if ($freeSpacePercentage -lt $freeSpaceThreshold) {
        # Create the message body
        $body = "Alert: Drive $($disk.DeviceID) has only $([math]::round($freeSpacePercentage, 2))% free space remaining."

        # Send email alert
        Send-MailMessage -SmtpServer $smtpServer -From $fromAddress -To $toAddress `
                         -Subject $subject -Body $body -Priority High

        Write-Output "Alert sent: $body"
    } else {
        Write-Output "Drive $($disk.DeviceID) is healthy with $([math]::round($freeSpacePercentage, 2))% free space."
    }
}
