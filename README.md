# PS-ActiveADUsers
This powershell script will query AD for three things. 

**Active AD Users**
* Name
* Last Logon Date
* Account Expiration Date (if any)
* Account creation date

**Domain Admins**
* Any user that is a member of the Doman Admins user group. 
* Account enabled status.

**Dev Admins**
* Any user that is a member of the Dev Admins user group. 
* Account enabled status.

Data will be exported to ad-user.csv file and that file will be sent in an email attachment to the designated recipient(s). 