<#
 Name: Samuel Carrasco
 Rank: 1st Lt
 Title: Practice Problem 2
 Description: Solves Problem 2
#>

<#
 Code for section 2
#>
$a = 5
$b = "Name"
$c = @()


function main($a, $b, $c) {

    <#
     Code for section 3
    #>
    [int]$number = Read-Host "Enter a number" #Solves part (b)

    if ($a -eq $number) {
        Write-Host "$a is equal to $number" #Solves part (c)
    }
    else {
        Write-Host "$a is different than $number" #Solves part (c)
    }

    <#
     Code for section 4
    #>
    $c = $c + "name"
    for ($i = 0; $i -lt 4; $i++) {
        $name = Read-Host "Enter a name"
        $c = $c + $name
    }

    <#
     Code for section 5
    #>
    foreach ($name in $c) {
        if ($name.Length -gt 5) {
            $name >> LongName.txt
        }
        else {
            $name >> ShortName.txt
        }
    }

    PrintTextFile
}

function PrintTextFile () {
    Write-Host "The contents of LongName.txt is:"
    Get-Content LongName.txt
    Write-Host "The contents of ShortName.txt is:"
    Get-Content ShortName.txt
}

main $a $b $c #Solves Section 3 part (a)

<#
 Code for section 7
#>
$hashMap = @{
    Hometown = "Chicago"
    Height   = 60
    Weight   = 150
    Name     = "Fred"
}
$hashMap.Add("Age", 39) #Solves (a)
$hashMap["Weight"] = 200 #Solves (b)
do {
    $city = Read-Host "Enter a city (must not be Chicago)" #Solves (c)
} while ($city -eq $hashMap["Hometown"])

$hashMap["Hometown"] = $city #Solves (c)

Write-Host "There are $($hashMap.Count) key-value pairs" #Solves (d)

