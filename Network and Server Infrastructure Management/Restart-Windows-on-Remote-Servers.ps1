$ServiceName = Read-Host "Enter the name of the service"
$Servers = @("Server1", "Server2")

foreach ($Server in $Servers) {
    Restart-Service -Name $ServiceName -ComputerName $Server -Force
}
