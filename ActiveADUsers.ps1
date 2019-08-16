Get-ADUser -Filter 'enabled -eq $true' -Properties * | select Name, LastLogonDate, Enabled, AccountExpirationDate, whenCreated | Export-Csv c:\script\ad-users.csv

Get-ADGroupMember -Identity "Domain Admins" -Recursive | %{Get-ADUser -Identity $_.distinguishedName} | Select Name, Enabled | Export-Csv c:\script\ad-domain-admins.csv

Get-ADGroupMember -Identity "Dev Admins" -Recursive | %{Get-ADUser -Identity $_.distinguishedName} | Select Name, Enabled | Export-Csv c:\script\ad-dev-admins.csv