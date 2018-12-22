Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install openssh -params '"/SSHServerFeature /KeyBasedAuthenticationFeature"' -confirm

New-Item "C:\Users\Ladmin\.ssh\authorized_keys" -Force
Copy-Item "A:\id_rsa.pub" "C:\Users\Ladmin\.ssh\authorized_keys" -Force 
