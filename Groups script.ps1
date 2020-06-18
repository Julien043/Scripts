foreach ($line in Get-Content "C:\temp\groups.txt")
{

    $info = $line -split ";"

    $group = $info[0]
    $oupath = $info[1]
    $grouptype = $info[2]

    New-ADGroup -Name $group -Path $oupath -GroupScope $grouptype



}