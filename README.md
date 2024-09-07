## Windows 11 Lite (UUP dumped)

Get Windows 11 up and running on older, unsupported PCs. No apps, no Defender, and no crappy updates.

### How To:

- Get [__Windows 11__](https://uupdump.net/fetchupd.php?arch=amd64&ring=retail&build=22621.1), 22H2 (22621.1), Home N is the lightest.

- Run 'uup_download_windows.cmd' first to download the UUP files.

- Edit 'convert-UUP.cmd' to set faster XPRESS compression:

  ``if %WIMFILE%==install.wim set _rrr=%_rrr% --compress=FAST``

  You'll find the conversion options commented in the script.

- Replace 'ConvertConfig.ini' with the one from my repo to get the setup as intended.

- Get [__NTLite__](www.ntlite.com/download/) to optimize your WIM image and set up an unattended installation.

- Add a new partition, possibly at the end of the disk, to speed things up and avoid any hiccups.
 
- Edit 'NTLite\settings.xml' to change default paths and set XPRESS compression:

  `<WimCompression>1</WimCompression>`

- Load 'sources\install.wim' and apply my 'NTLite.xml' preset as is.

- Export and append the installed drivers:

  `DISM /Online /Export-Driver /Destination:C:\Drivers`

- Set the language and keyboard layout in 'Unattended\OOBE\Windows localization'.

- Apply the changes to the image, it will take some time.

- Format the installation partition and extract the image now:

  `DISM /Apply-Image /Imagefile:D:\install.wim /Index:1 /ApplyDir:E: /Compact`

- Get [__EasyBCD__](neosmart.net/EasyBCD/) to add a new boot entry, set it as default.

- Finally, reboot to complete the installation.

If you find this useful, please give it a star️. Thanks!
