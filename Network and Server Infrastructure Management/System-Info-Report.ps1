$Servers = @("Server1", "Server2")
foreach ($Server in $Servers) {
    Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName $Server |
    Select-Object PSComputerName, Caption, Version, LastBootUpTime
}
