<#
.SYNOPSIS
    File_Hash_Calculator_Script.ps1 - A PowerShell Script to calculate and verify File Hashes with PowerShell.
 
.DESCRIPTION
    This script is used to calculate file hashes of a given file.
    The calculated file hash then gets verified with the original provided file hash.
    Currently this script supports every method which the cmdlet Get-FileHash supports.
    - MACTripleDES
    - MD5
    - RIPEMD160
    - SHA1
    - SHA256
    - SHA384
    - SHA512
     
.OUTPUTS
    Results are printed to the console.
 
.NOTES
    Author        Falko Banaszak, https://virtualhome.blog, Twitter: @Falko_Banaszak
    
    Change Log    V1.00, 08/08/2019 - Initial version 
	
.LICENSE
	MIT License
	Copyright (c) 2019 Falko Banaszak
	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:
	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.
	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE.
 
#>

# Write Progress Variables
$Activity = "Calculating and comparing the File Hash Value"
$ID = 1
$Task = "Please Wait, calculating..."

# The Main Menu
function Show-Menu
{
    param (
            [string]$MenuTitle = " Choose your desired hash calculation method "
          )
    
    Clear-Host
    Write-Host "*** $MenuTitle ***"
    Write-Host "1: Press '1' for MACTripleDES "
    Write-Host "2: Press '2' for MD5"
    Write-Host "3: Press '3' for RIPEMD160"
    Write-Host "4: Press '4' for SHA1"
    Write-Host "5: Press '5' for SHA256"
    Write-Host "6: Press '6' for SHA384"
    Write-Host "7: Press '7' for SHA512"
    Write-Host "Q: Press the 'Q' button to quit"
}

# Showing the Menu and selecting the hash method
Show-Menu -MenuTitle " Choose your desired hash calculation method "
$HashSelection = Read-Host "Please select your desired hash calculation method"

switch ($HashSelection)
{
    '1' {
        'You have chosen MACTripleDES'
        # Get the file which you want to calculate the file hash from
        $FileToCalculate = read-host "Enter full path to the file you wish to calculate (without quotes)"

        # Get the file hash which you want to verify with the calculated file
        $HashToVerify = read-host "Enter your file Hash you want to verify"

        # Write the Progress in the PowerShell console
        Write-Progress -ID $ID -Activity $Activity -Status $Task

        # Compare file hash with the given original file hash value and check whether given file hash matches or not
        # Also writing the output to the file
        $Difference = Get-FileHash -Path "$FileToCalculate" -Algorithm MACTripleDES | Compare-Object -ReferenceObject "$HashToVerify" -DifferenceObject {$_.Hash}
        
        If ($Difference)

        {
            Write-Host "MACTripleDES hash does not match with the calculated one from your given file ! " -ForegroundColor red
        }
            else
        {
            Write-Host "MACTripleDES hash matches with the calculated one from your given file ! " -ForegroundColor green
        }
        }
    '2' {
        'You have chosen MD5'
        # Get the file which you want to calculate the file hash from
        $FileToCalculate = read-host "Enter full path to the file you wish to calculate (without quotes)"

        # Get the file hash which you want to verify with the calculated file
        $HashToVerify = read-host "Enter your file Hash you want to verify"

        # Write the Progress in the PowerShell console
        Write-Progress -ID $ID -Activity $Activity -Status $Task

        # Compare file hash with the given original file hash value and check whether given file hash matches or not
        # Also writing the output to the file
        $Difference = Get-FileHash -Path "$FileToCalculate" -Algorithm MD5 | Compare-Object -ReferenceObject "$HashToVerify" -DifferenceObject {$_.Hash}
        
        If ($Difference)

        {
            Write-Host "MD5 hash does not match with the calculated one from your given file ! " -ForegroundColor red
        }
            else
        {
            Write-Host "MD5 hash matches with the calculated one from your given file ! " -ForegroundColor green
        }
        }
    '3' {
        'You have chosen RIPEMD160'
        # Get the file which you want to calculate the file hash from
        $FileToCalculate = read-host "Enter full path to the file you wish to calculate (without quotes)"

        # Get the file hash which you want to verify with the calculated file
        $HashToVerify = read-host "Enter your file Hash you want to verify"

        # Write the Progress in the PowerShell console
        Write-Progress -ID $ID -Activity $Activity -Status $Task

        # Compare file hash with the given original file hash value and check whether given file hash matches or not
        # Also writing the output to the file
        $Difference = Get-FileHash -Path "$FileToCalculate" -Algorithm RIPEMD160 | Compare-Object -ReferenceObject "$HashToVerify" -DifferenceObject {$_.Hash}
        
        If ($Difference)

        {
            Write-Host "RIPEMD160 hash does not match with the calculated one from your given file ! " -ForegroundColor red
        }
            else
        {
            Write-Host "RIPEMD160 hash matches with the calculated one from your given file ! " -ForegroundColor green
        }
        }
    '4' {
        'You have chosen SHA1'
        # Get the file which you want to calculate the file hash from
        $FileToCalculate = read-host "Enter full path to the file you wish to calculate (without quotes)"

        # Get the file hash which you want to verify with the calculated file
        $HashToVerify = read-host "Enter your file Hash you want to verify"

        # Write the Progress in the PowerShell console
        Write-Progress -ID $ID -Activity $Activity -Status $Task

        # Compare file hash with the given original file hash value and check whether given file hash matches or not
        # Also writing the output to the file
        $Difference = Get-FileHash -Path "$FileToCalculate" -Algorithm SHA1 | Compare-Object -ReferenceObject "$HashToVerify" -DifferenceObject {$_.Hash}
        
        If ($Difference)

        {
            Write-Host "SHA1 hash does not match with the calculated one from your given file ! " -ForegroundColor red
        }
            else
        {
            Write-Host "SHA1 hash matches with the calculated one from your given file ! " -ForegroundColor green
        }
        }
    '5' {
        'You have chosen SHA256'
        # Get the file which you want to calculate the file hash from
        $FileToCalculate = read-host "Enter full path to the file you wish to calculate (without quotes)"

        # Get the file hash which you want to verify with the calculated file
        $HashToVerify = read-host "Enter your file Hash you want to verify"

        # Write the Progress in the PowerShell console
        Write-Progress -ID $ID -Activity $Activity -Status $Task

        # Compare file hash with the given original file hash value and check whether given file hash matches or not
        # Also writing the output to the file
        $Difference = Get-FileHash -Path "$FileToCalculate" -Algorithm SHA256 | Compare-Object -ReferenceObject "$HashToVerify" -DifferenceObject {$_.Hash}
        
        If ($Difference)

        {
            Write-Host "SHA256 hash does not match with the calculated one from your given file ! " -ForegroundColor red
        }
            else
        {
            Write-Host "SHA256 hash matches with the calculated one from your given file ! " -ForegroundColor green
        }
        }
    '6' {
        'You have chosen SHA384'
        # Get the file which you want to calculate the file hash from
        $FileToCalculate = read-host "Enter full path to the file you wish to calculate (without quotes)"

        # Get the file hash which you want to verify with the calculated file
        $HashToVerify = read-host "Enter your file Hash you want to verify"

        # Write the Progress in the PowerShell console
        Write-Progress -ID $ID -Activity $Activity -Status $Task

        # Compare file hash with the given original file hash value and check whether given file hash matches or not
        # Also writing the output to the file
        $Difference = Get-FileHash -Path "$FileToCalculate" -Algorithm SHA384 | Compare-Object -ReferenceObject "$HashToVerify" -DifferenceObject {$_.Hash}
        
        If ($Difference)

        {
            Write-Host "SHA384 hash does not match with the calculated one from your given file ! " -ForegroundColor red
        }
            else
        {
            Write-Host "SHA384 hash matches with the calculated one from your given file ! " -ForegroundColor green
        }
        }
    '7' {
        'You have chosen SHA512'
        # Get the file which you want to calculate the file hash from
        $FileToCalculate = read-host "Enter full path to the file you wish to calculate (without quotes)"

        # Get the file hash which you want to verify with the calculated file
        $HashToVerify = read-host "Enter your file Hash you want to verify"
        
        # Write the Progress in the PowerShell console
        Write-Progress -ID $ID -Activity $Activity -Status $Task

        # Compare file hash with the given original file hash value and check whether given file hash matches or not
        # Also writing the output to the file
        $Difference = Get-FileHash -Path "$FileToCalculate" -Algorithm SHA512 | Compare-Object -ReferenceObject "$HashToVerify" -DifferenceObject {$_.Hash}
        
        If ($Difference)

        {
            Write-Host "SHA512 hash does not match with the calculated one from your given file ! " -ForegroundColor red
        }
            else
        {
            Write-Host "SHA512 hash matches with the calculated one from your given file ! " -ForegroundColor green
        }
        }
    'Q' {
        return
        }
      
}
