$webclient = New-Object System.Net.WebClient
$ip = $webclient.DownloadString("http://whatismyip.akamai.com")
$ip = $ip.Trim()
Get-Date -Format "yyyy-MM-dd HH:mm:ss" | Out-File -FilePath "C:\Users\xyz\iplog.txt" -Append
$ip | Out-File -FilePath "C:\Users\xyz\iplog.txt" -Append
