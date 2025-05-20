Import-Module ActiveDirectory

Get-ADUser -Filter * -Properties DisplayName,Title,Department,EmailAddress |
Select-Object SamAccountName,DisplayName,Title,Department,EmailAddress |
Export-Csv -Path "C:\AD_Users_Export.csv" -NoTypeInformation -Encoding UTF8
