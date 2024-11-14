# Simple PowerShell Script Example

# Display a greeting message
Write-Host "Hello, Welcome to PowerShell!"

# Prompt the user to enter their name
$name = Read-Host "Please enter your name"

# Display a personalized greeting with the user's name
Write-Host "Nice to meet you, $name!"

# Display the current date and time
$currentDate = Get-Date
Write-Host "Today's date and time is:" $currentDate

# Check if it's the weekend
if ($currentDate.DayOfWeek -eq 'Saturday' -or $currentDate.DayOfWeek -eq 'Sunday') {
    Write-Host "Enjoy your weekend!"
} else {
    Write-Host "Have a productive day!"
}
