Import-Module ActiveDirectory

$Username = Read-Host "Enter username to enable"
Enable-ADAccount -Identity $Username
