Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install openssh -params '"/SSHServerFeature /KeyBasedAuthenticationFeature"' -confirm

Copy-Item "a:\id_rsa.pub" -Destination "C:\Users\ladmin\.ssh\authorized_keys"
