foreach ($line in Get-Content "C:\temp\Users.txt")
{
    $info = $line -split ";"

    $Name = $info[0]
    $GivenName = $info[1]
    $oupath = $info[2]
    $descrption = $info[3]
    $UserPrincipalName = $info[4]

    New-ADUser -name $Name `
    -GivenName $GivenName `
    -Path $oupath `
    -Description $descrption `
    -Userprincipalname $UserPrincipalName `
    -ChangePasswordAtLogon 1 `
    -Enabled 1 `
    -AccountPassword (ConvertTo-SecureString "P@$$w0rd123" -AsPlainText -Force) `


}