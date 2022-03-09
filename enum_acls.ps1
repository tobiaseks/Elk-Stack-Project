PS C:\Users\sysadmin.GOODCORP> $Documents = Get-ChildItem .\
>> foreach (ls in $Documents)
>> Get-Acl ls