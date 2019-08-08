# File Hash Calculator with Get-FileHash in PowerShell

This simple PowerShell Script lets you calculate a hash of a given file and compares it with the original hash/checksum the user provides.

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

If you are calculating big files, the Script will show a progress bar, so you know the file is beeing calculated.

![Image of the progess bar](https://github.com/falkobanaszak/MD5-Hash-Calculator-PowerShell/blob/master/hash_calulcation.png)

The Script will tell you if your file and the provided checksum is valid or not.

**Example of a valid hash:**

![Image of a valid hash](https://raw.githubusercontent.com/falkobanaszak/MD5-Hash-Calculator-PowerShell/master/hash_valid.png)

**Example of a non valid hash:**

![Image of a non valid hash](https://raw.githubusercontent.com/falkobanaszak/MD5-Hash-Calculator-PowerShell/master/hash_not_valid.png)

Get the Script here: [MD5 Hash Calculator](https://github.com/falkobanaszak/MD5-Hash-Calculator-PowerShell/blob/master/MD5_Calculator_Script.ps1)
