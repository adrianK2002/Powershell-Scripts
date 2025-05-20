Import-Module ActiveDirectory

$Username = Read-Host "Enter username"
Get-ADUser -Identity $Username -Properties MemberOf |
Select-Object -ExpandProperty MemberOf
