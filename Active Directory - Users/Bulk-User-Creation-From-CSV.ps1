Import-Module ActiveDirectory

$Users = Import-Csv "C:\NewUsers.csv"

foreach ($User in $Users) {
    $SecurePassword = ConvertTo-SecureString $User.Password -AsPlainText -Force
    New-ADUser -Name "$($User.FirstName) $($User.LastName)" `
               -GivenName $User.FirstName `
               -Surname $User.LastName `
               -SamAccountName $User.Username `
               -UserPrincipalName "$($User.Username)@nhs.local" `
               -Title $User.JobTitle `
               -Department $User.Department `
               -Path $User.OU `
               -AccountPassword $SecurePassword `
               -Enabled $true `
               -ChangePasswordAtLogon $true
}
