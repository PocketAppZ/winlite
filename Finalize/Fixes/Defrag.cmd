:: https://download.sysinternals.com/files/Contig.zip
@echo off
:: Defrag MFT
contig c:\$Mft
contig c:\$LogFile
contig c:\$Volume
contig c:\$AttrDef
contig c:\$Bitmap
contig c:\$Boot
contig c:\$BadClus
contig c:\$Secure
contig c:\$UpCase
contig -s c:\$Extend
:: Defrag WINDOWS
contig -q -s c:\Windows\*
exit /b
