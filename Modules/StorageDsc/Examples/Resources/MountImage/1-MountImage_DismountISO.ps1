<#
    .EXAMPLE
        This configuration will unmount an ISO file that is mounted in S:.
#>
configuration Example
{
    Import-DscResource -ModuleName StorageDsc

    MountImage ISO
    {
        ImagePath = 'c:\Sources\SQL.iso'
        DriveLetter = 'S'
        Ensure = 'Absent'
    }
}
