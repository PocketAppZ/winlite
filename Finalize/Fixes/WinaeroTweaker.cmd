@echo off
pushd "%Temp%"
curl.exe -L -o %~n0.zip https://winaerotweaker.com/download/winaerotweaker.zip
PowerShell "Expand-Archive %~n0.zip -DestinationPath ."
SilentSetup.cmd
