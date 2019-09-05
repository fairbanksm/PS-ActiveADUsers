
#variables for mail message
$from = "meghan.fairbanks@mnpass.net"
$to = @("meghan.fairbanks@transcore.com")
$subject = "Active Directory Users Query"
$body = "Monthly AD query users query"
$smtpserver = "10.202.101.35"

$filepath = "c:\script\ad-users.csv"

#get all enabled accounts
Get-ADUser -Filter 'enabled -eq $true' -Properties * | select Name, LastLogonDate, Enabled, AccountExpirationDate, whenCreated | Export-Csv $filepath

#get members of domain admin security group
"`"Domain Admins`"" | out-file c:\script\ad-users.csv -Append
Get-ADGroupMember -Identity "Domain Admins" -Recursive | %{Get-ADUser -Identity $_.distinguishedName} | Select Name, LastLogonDate, Enabled, AccountExpirationDate, whenCreated | Export-Csv $filepath -Append

#get members of dev admins group
"Dev Admins" | out-file c:\script\ad-users.csv -Append
Get-ADGroupMember -Identity "Dev Admins" -Recursive | %{Get-ADUser -Identity $_.distinguishedName} | Select Name, LastLogonDate, Enabled, AccountExpirationDate, whenCreated | Export-Csv $filepath -Append

#send mail message with attachments
Send-MailMessage -From $from -To $to -Subject $subject -Body $body -SmtpServer $smtpserver -Attachments $filepath