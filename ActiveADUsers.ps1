Get-ADUser -Filter 'enabled -eq $true' -Properties * | select Name, LastLogonDate, Enabled | Export-Csv c:\script\ad-users.csv