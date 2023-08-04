$computers = Get-Content -Path "C:\temp\computerlist.txt"
foreach ($computer in $computers)
     {
     $ip = $computer.Split(" - ")[0]
     if (Test-Connection  $ip -Count 1 -ErrorAction SilentlyContinue){
         Write-Host "$ip is up"
         }
     else{
         Write-Host "$ip is down"
         }
     }
Read-Host -Prompt "Press Enter to exit"