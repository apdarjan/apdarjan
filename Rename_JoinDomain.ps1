$pcname = read-host 'New name of computer: '
$Domain = 'tnet.tti-ecm.com'
$Credential = Get-Credential
Rename-Computer $pcname

if ($pcname -match 'TNNB') {
    Add-Computer -Domain $Domain -OUPath 'OU=Laptops,OU=User Computers,OU=Devices,OU=TNet Ottawa,DC=tnet,DC=tti-ecm,DC=com' -NewName $pcname -Credential $Credential -Restart -Force
    }
elseif ($pcname -match 'TNWS') {
    Add-Computer -Domain $Domain -OuPath 'OU=TPM Desktops,OU=Desktops,OU=User Computers,OU=Devices,OU=TNet Ottawa,DC=tnet,DC=tti-ecm,DC=com' -NewName $pcname -Credential $Credential -Restart -Force
}
    
