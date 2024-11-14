# where Example
$numbers = 1..10
$evenNumbers = $numbers | Where-Object { $_ % 2 -eq 0 }
Write-Host "Even numbers: $evenNumbers"
