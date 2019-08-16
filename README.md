# PS-ActiveADUsers
This powershell script will query AD for three things. 

**Active AD Users**
* Name
* Last Logon Date
* Account Expiration Date (if any)
* Account creation date
Data will be exported to ad-user.csv file.

**Domain Admin**
*Any user that is a member of the Doman Admins user group. 
*Account enabled status.
Data will be exported to ad-domain-admins.csv file.

**Dev Admnins**
*Any user that is a member of the Dev Admins user group. 
*Account enabled status.
Data will be exported to ad-dev-admins.csv file.