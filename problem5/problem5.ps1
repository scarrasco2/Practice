function main () {
    $username = Read-Host "Enter your name"
    $password = Read-Host -AsSecureString "Enter a password"

    $salaries = @()
    for ($i = 0; $i -lt 5; $i++) {
        [int]$userInput = Read-Host "Enter future salary"
        $salaries = $salaries + $userInput
    }

    SortSalaries $salaries
}

function SortSalaries ($salaries) {
    <#
     Make sure that every time the code is run that it only prints out the 5 salaries that the user just 
     inputted, and not the previous salaries saved from a previous run of the code.
    #>
    $null > SmallSalaries.txt
    $null > BigSalaries.txt
    foreach ($item in $salaries) {
        if ($item -lt 100000) {
            $item >> SmallSalaries.txt
        }
        else {
            $item >> BigSalaries.txt
        }
    }

    Print
}

function Print () {
    Write-Host "The contents of SmallSalaries.txt is:"
    Get-Content SmallSalaries.txt
    Write-Host "The contents of BigSalaries.txt is:"
    Get-Content BigSalaries.txt
}

main