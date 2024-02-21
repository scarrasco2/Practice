<#
 Name: Samuel Carrasco
 Rank: 1st Lt
 Title: Practice Problem 4
 Description: Solves Problem 4
#>

function username () {

    $name = Read-Host "Enter your name"
    $name > Big.txt
    $name > Small.txt
    userInput
    
}

function userInput () {
    
    $names = @()
    while ($names.Length -lt 5) {
        $userInput = Read-Host "Enter a word"
        if ($userInput.Length -lt 4) {
            Write-Host "Too small"
        }
        elseif ($userInput.Length -gt 9) {
            Write-Host "Too Large"
        }
        else {
            $names = $names + $userInput
            $userInput >> Acceptable.txt
        }
    }

    splitter "Acceptable.txt"
}

function splitter ($file) {
    $words = Get-Content $file
    foreach ($item in $words) {
        if ($item.Length -gt 6) {
            $item >> Big.txt
        }
        else {
            $item >> Small.txt
        }
    }
    printText
}

function printText () {
    Write-Host "The contents of Big.txt is:"
    Get-Content Big.txt
    Write-Host "The contents of Small.txt is:"
    Get-Content Small.txt
}

function main () {
    New-Item -ItemType File -Name Acceptable.txt
    userName
}

main