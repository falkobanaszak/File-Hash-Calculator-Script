# File Hash Calculator with Get-FileHash in PowerShell

This PowerShell Script lets you calculate a hash of a given file and compares it with the original hash/checksum the user provides.

Simply execute the Script and follow the Steps for the hash calculation and verfication by choosing the menu point.
You will have to provide a path to the file you want to calculate and you will have to paste the original hash/checksum to compare it.
Currently this script supports every method which the cmdlet Get-FileHash supports.
- MACTripleDES
- MD5
- RIPEMD160
- SHA1
- SHA256
- SHA384
- SHA512

Simply execute the Script in a opened up PowerShell

![Execution of the Script](https://github.com/falkobanaszak/File-Hash-Calculator-Script/blob/master/execute_script.png)

After executing the script you will be presented a menu to choose which algorithm you want to calculate.

![Script Menu](https://github.com/falkobanaszak/File-Hash-Calculator-Script/blob/master/script_menu.png)

If you are calculating big files, the Script will show a progress bar, so you know the file is beeing calculated.

![Image of the progess bar](https://github.com/falkobanaszak/File-Hash-Calculator-Script/blob/master/hash_calculation.png)

The Script will tell you if your file and the provided checksum is valid or not.

**Example of a valid hash:**

![Image of a valid hash](https://github.com/falkobanaszak/File-Hash-Calculator-Script/blob/master/hash_valid.png)

**Example of a non valid hash:**

![Image of a non valid hash](https://github.com/falkobanaszak/File-Hash-Calculator-Script/blob/master/hash_not_valid.png)

The script also checks for a correct user input. If the file doesn't exist which the user provides, it throws an error message.

![Missing File or wrong input](https://github.com/falkobanaszak/File-Hash-Calculator-Script/blob/master/missing_file.png)

Get the Script here: [File Hash Calculator Script](https://github.com/falkobanaszak/File-Hash-Calculator-Script/blob/master/File_Hash_Calculator_Script.ps1)
