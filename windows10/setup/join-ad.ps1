Set-DNSClientServerAddress * -ServerAddresses ("10.10.10.182")
$credentials = New-Object System.Management.Automation.PsCredential("corp\Administrator", (ConvertTo-SecureString "S3cr3t0!" -AsPlainText -Force))
$OU  = "OU=computers,DC=corp,DC=local"
Add-Computer -DomainName corp.local -Credential $credentials