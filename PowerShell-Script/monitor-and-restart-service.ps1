# Define the service name
$serviceName = "Spooler"

# Check service status and restart if necessary
$service = Get-Service -Name $serviceName

if ($service.Status -ne 'Running') {
    Write-Output "$serviceName is not running. Attempting to start it..."
    Start-Service -Name $serviceName
    Write-Output "$serviceName started."
} else {
    Write-Output "$serviceName is already running."
}
