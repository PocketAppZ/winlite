if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process PowerShell "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit}
Get-WindowsImage -Mounted | ForEach {Measure-Command {Dismount-WindowsImage -Discard -Path $_.Path}}
Get-WindowsImage -Mounted | ForEach {Measure-Command {Clear-WindowsCorruptMountPoint -ScratchDirectory $_.Path}}
Sleep 5