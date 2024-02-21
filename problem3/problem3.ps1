<#
 Name: Samuel Carrasco
 Rank: 1st Lt
 Title: Practice Problem 3
 Description: Solves Problem 3
#>

function userName () {
    $name = Read-Host "Enter your name"
    numInput $name
}

function numInput ($name) {
    $evens = @()
    while ($evens.Length -lt 5) {
        [int]$userInput = Read-Host "Enter a even number between 0 and 100"
        if ($userInput % 2 -eq 0) {
            $evens = $evens + $userInput
        }
        else {
            Write-Host "try again and enter only even numbers"
        }
    }
    highLow $evens $name
}

function highLow ($evens, $name) {
    $name > Low.txt
    $name > High.txt
    foreach ($item in $evens) {
        if ($item -ge 50) {
            $item >> High.txt
        }
        else {
            $item >> Low.txt
        }
    }
    printFiles
}

function printFiles () {
    Write-Host "The contents of High.txt is:"
    Get-Content High.txt
    Write-Host "The contents of Low.txt is:"
    Get-Content Low.txt
}

userName