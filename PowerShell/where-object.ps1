# Where-Object

# Filters objects based on specified conditions.

Get-Process | Where-Object { $_.CPU -gt 50 }
