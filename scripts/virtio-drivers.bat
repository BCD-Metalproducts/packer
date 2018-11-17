powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso', 'C:\Windows\Temp\virtio-win.iso')" <NUL
cmd /c "C:\Program Files\7-Zip\7z.exe" x "C:\Windows\Temp\virtio-win.iso" -oC:\Windows\Temp\virtio-win"
cmd /c "C:\Windows\System32\pnputil.exe" -a "C:\Windows\Temp\virtio-win\Balloon\2k16\amd64\balloon.inf"
cmd /c "C:\Windows\System32\pnputil.exe" -a "C:\Windows\Temp\virtio-win\NetKVM\2k16\amd64\netkvm.inf"
cmd /c "C:\Windows\System32\pnputil.exe" -a "C:\Windows\Temp\virtio-win\vioscsi\2k16\amd64\vioscsi.inf"
