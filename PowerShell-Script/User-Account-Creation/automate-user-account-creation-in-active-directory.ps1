# Import CSV file with user data
$users = Import-Csv -Path "C:\UsersList.csv"

# Loop through each user and create them in Active Directory
foreach ($user in $users) {
    $fullName = "$($user.FirstName) $($user.LastName)"
    $username = $user.Username
    $password = "P@ssw0rd" | ConvertTo-SecureString -AsPlainText -Force

    New-ADUser -Name $fullName -GivenName $user.FirstName -Surname $user.LastName `
               -SamAccountName $username -UserPrincipalName "$username@domain.com" `
               -AccountPassword $password -Enabled $true

    Write-Output "Created user: $fullName"
}
