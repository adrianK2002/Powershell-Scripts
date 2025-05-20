Import-Module ActiveDirectory

$Groups = Get-ADGroup -Filter *

foreach ($Group in $Groups) {
    Get-ADGroupMember -Identity $Group.Name |
    Select-Object @{Name="Group";Expression={$Group.Name}},Name,SamAccountName |
    Export-Csv -Path "C:\GroupMembers\$($Group.Name).csv" -Append -NoTypeInformation
}
