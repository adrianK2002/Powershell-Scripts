Import-Module ActiveDirectory

$Username = Read-Host "Enter username"
$TargetOU = Read-Host "Enter target OU (e.g. 'OU=Admins,DC=adrian,DC=local')"

Get-ADUser -Identity $Username | Move-ADObject -TargetPath $TargetOU
