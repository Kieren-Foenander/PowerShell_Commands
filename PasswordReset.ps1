$Credential = Get-Credential

 # Create the secured password
 $NewPwd = ConvertTo-SecureString "MyComplexPassword@123" -AsPlainText -Force
 
# Reset the AD user password and specify the admin credential context
 Set-ADAccountPassword -Identity user03 -NewPassword $NewPwd -Credential $Credential