@echo off
pushd "%~dp0"
start "" "%~dp0\chrome.exe" -incognito --disable-machine-id --user-data-dir="%temp%"