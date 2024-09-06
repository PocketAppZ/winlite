@echo off
set key=HKCU\SOFTWARE\Bandizip
for %%I in (%key%) do (set n=%%~nxI)
reg export "%key%" "%n%.reg" /y
