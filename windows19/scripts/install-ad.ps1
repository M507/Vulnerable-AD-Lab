Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
Import-Module ADDSDeployment
$Password = (ConvertTo-SecureString -String "S3cr3t0!" -AsPlainText -Force)
Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath "C:\\Windows\\NTDS" -DomainMode "7" -DomainName "corp.local" -DomainNetbiosName "corp" -ForestMode "7" -InstallDns:$true -LogPath "C:\\Windows\\NTDS" -NoRebootOnCompletion:$true  -SafeModeAdministratorPassword $Password  -SysvolPath "C:\\Windows\\SYSVOL" -Force:$true

cp a:\vulnad.ps1 c:\Temp\