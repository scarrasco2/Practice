<#
 Name: Samuel Carrasco
 Rank: 1st Lt
 Title: Practice Problem 6
 Description: Solves Problem 6
#>

function makeArray() {
    $array = @()
    while ($array.Length -lt 10) {
        [int]$userInput = Read-Host "Enter a number (1-1000)"
        if ($userInput -lt 1 -or $userInput -gt 1000) {
            Write-Host "Not valid input, Try again!"
        }
        $array = $array + $userInput
    }
    $array
    Sortarray $array
}

function Sortarray($array) {
    foreach ($item in $array) {
        if ($item % 2 -eq 0 -and $item -ge 500) {
            Write-Host "$item is even and large"
        }
        elseif ($item % 2 -eq 1 -and $item -ge 500) {
            Write-Host "$item is odd and large"
        }

        elseif ($item % 2 -eq 1 -and $item -lt 500) {
            Write-Host "$item is odd and small"
        }
        else {
            Write-Host "$item is even and small"
        }
        
    }
    Round-Up
}

function Round-Up () {
    
    do {
        [int]$userResponse = Read-Host "Enter an odd number" 
        if ($userResponse % 2 -eq 0) {
            Write-Host "Invalid input, try again"
        }
    } while ($userResponse % 2 -eq 0)

    [double]$doubleNum = $userResponse / 2
    Write-Host $doubleNum
    [int]$intgerNum = $doubleNum
    Write-Host $intgerNum
    Write-Host "I am a PowerShell Master and don't exit the code, or you will have to rewrite everything...just ask Doc."
}

makeArray