Import-Module ActiveDirectory

$InactiveDate = (Get-Date).AddDays(-90)

Search-ADAccount -UsersOnly -AccountInactive -TimeSpan 90.00:00:00 |
Where-Object { $_.Enabled -eq $true } |
ForEach-Object { Disable-ADAccount -Identity $_.SamAccountName }
