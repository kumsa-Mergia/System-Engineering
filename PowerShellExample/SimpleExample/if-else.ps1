# if-else Example
$number = Read-Host "Enter a number"

if ($number -gt 0) {
    Write-Host "The number is positive."
} elseif ($number -lt 0) {
    Write-Host "The number is negative."
} else {
    Write-Host "The number is zero."
}
