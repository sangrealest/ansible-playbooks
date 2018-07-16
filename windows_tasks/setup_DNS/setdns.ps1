$wmi = Get-WmiObject win32_networkadapterconfiguration -filter "ipenabled = true"
$dnsserver = "1.1.1.1","2.2.2.2"
$wmi.setdnsserversearchorder($dnsserver)