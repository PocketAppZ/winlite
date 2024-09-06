@echo off
pushd "%~dp0\UserData"
if not exist *.bdic exit
set dirs=*cache*
for /d /r "%cd%" %%d in ("%dirs%") do rd /s /q "%%d"
del /s /q *.exe *.dll *.log *.old >nul
pushd 001
set backupDir=D:\Documents\Apps\Chrome
for %%f in ("Bookmarks","Favicons","Preferences") do copy /y "%%f" %backupDir%
timeout /t 3 >nul
