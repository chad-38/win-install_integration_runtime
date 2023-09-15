Add-WindowsCapability -Online -Name OpenSSH.Server
Set-Service -Name sshd -StartupType 'Automatic'
Start-Service sshd
Invoke-WebRequest -Uri 'https://download.microsoft.com/download/E/4/7/E4771905-1079-445B-8BF9-8A1A075D8A10/IntegrationRuntime_5.33.8627.2.msi' -OutFile 'C:\Temp\IntegrationRuntime_5.33.8627.2.msi'
Start-Process -FilePath 'msiexec.exe' -ArgumentList '/i C:\Temp\IntegrationRuntime_5.33.8627.2.msi /passive'
