# Directly access a WMI instance of a drive (drive C:)
$a = [wmi]'Win32_LogicalDisk="C:"' 
$a | Format-Table Name, Freespace -autosize
$a.FreeSpace
"Free Space {0:0.0} GB" -f ($a.FreeSpace/1GB)
