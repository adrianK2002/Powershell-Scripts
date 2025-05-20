Import-Module ActiveDirectory

$FirstName = Read-Host "Enter First Name"
$LastName = Read-Host "Enter Last Name"
$Username = Read-Host "Enter Username (e.g. jsmith)"
$JobTitle = Read-Host "Enter Job Title"
$Department = Read-Host "Enter Department"
$OU = Read-Host "Enter OU (e.g. 'OU=Users,DC=nhs,DC=local')"
$Password = Read-Host "Enter Temporary Password" -AsSecureString

New-ADUser -Name "$FirstName $LastName" `
           -GivenName $FirstName `
           -Surname $LastName `
           -SamAccountName $Username `
           -UserPrincipalName "$Username@nhs.local" `
           -Title $JobTitle `
           -Department $Department `
           -Path $OU `
           -AccountPassword $Password `
           -Enabled $true `
           -ChangePasswordAtLogon $true
