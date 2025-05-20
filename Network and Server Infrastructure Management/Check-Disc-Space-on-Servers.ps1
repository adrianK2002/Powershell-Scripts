$Servers = @("Server1", "Server2", "Server3")

foreach ($Server in $Servers) {
    Get-WmiObject Win32_LogicalDisk -ComputerName $Server -Filter "DriveType=3" |
    Select-Object @{Name="Server";Expression={$Server}}, DeviceID, @{Name="Free(GB)";Expression={[math]::round($_.FreeSpace / 1GB, 2)}}, @{Name="Total(GB)";Expression={[math]::round($_.Size / 1GB, 2)}}
}
