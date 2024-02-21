<#
Name: Samuel Carrasco
Rank: 1st Lt
Title: Practice Problem 1  
#>

function UserName () {

    $name = Read-Host "Enter your name" #Section 1
    g
    $name > Pass.txt #Section 2

    $name > Fail.txt #Section 3

    UserInput #Section 4

}

 

function UserInput () {

    $grades = @() #Section 5

    for ($i = 1; $i -le 5; $i++) {

        [int]$userResponse = Read-Host "Enter grade (0-100)" #Section 6

        if ($userResponse -le 100 -and $userResponse -ge 0) {

            $grades = $grades + $userResponse #Section 6 + Section 7

        }

    }

    # End of the FOR BLOCK

 

    Write-Host "The grades array is $grades" #Section 8

    PassOrFail $grades #Section 9

}

 

function PassOrFail ($grades) {

    foreach ($item in $grades) { #Section 10

        if ($item -ge 60) {

            $item >> Pass.txt #Section 11

        }

        else {

            $item >> Fail.txt #Section 12

        }

    }

    # End of FOR EACH BLOCK

    PrintGrades

}

 

function PrintGrades () {

    Write-Host "The contents of Pass.txt is:"

    Get-Content Pass.txt #Section 14

    Write-Host "The contents of Fail.txt is:"

    Get-Content Fail.txt #Section 13

}

 

UserName #Call UserName function to begin