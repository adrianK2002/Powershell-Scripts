Import-Module ActiveDirectory

$Username = Read-Host "Enter the username to reset"
$NewPassword = Read-Host "Enter new password" -AsSecureString

Set-ADAccountPassword -Identity $Username -NewPassword $NewPassword -Reset
Set-ADUser -Identity $Username -ChangePasswordAtLogon $true
