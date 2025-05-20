$Source = "C:\Shared"
$Destination = "E:\Backups\Shared_" + (Get-Date -Format "yyyyMMdd_HHmm")

Copy-Item -Path $Source -Destination $Destination -Recurse
