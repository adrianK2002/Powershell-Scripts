Import-Module ActiveDirectory

Search-ADAccount -LockedOut |
Select-Object Name, SamAccountName, LockedOut |
Export-Csv -Path "C:\LockedOutUsers.csv" -NoTypeInformation
