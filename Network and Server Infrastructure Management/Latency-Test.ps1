$Devices = @("192.168.1.1", "192.168.1.2", "8.8.8.8")

foreach ($Device in $Devices) {
    Test-Connection -ComputerName $Device -Count 4 | Select-Object Address, ResponseTime
}
