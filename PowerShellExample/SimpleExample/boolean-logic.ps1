# Boolean Logic Example
$x = $true
$y = $false

if ($x -and $y) {
    Write-Host "Both are true."
} elseif ($x -or $y) {
    Write-Host "At least one is true."
} else {
    Write-Host "Neither is true."
}
