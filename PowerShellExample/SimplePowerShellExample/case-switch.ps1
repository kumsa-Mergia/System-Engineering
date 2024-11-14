# switch Example
$day = (Get-Date).DayOfWeek

switch ($day) {
    'Monday' { Write-Host "Start of the workweek!" }
    'Wednesday' { Write-Host "Midweek already!" }
    'Friday' { Write-Host "Weekend is near!" }
    default { Write-Host "Have a nice day!" }
}
