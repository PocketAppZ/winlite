:: Download audio tracks from YT videos - mki77 -
:: Depends:
:: https://yt-dl.org/latest/yt-dlp.exe.exe
:: https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-essentials.7z
echo off
title yt-dlp.exe
set "format=140 -o %%(title)s.%%(ext)s"
call :ytDownload
exit
:ytDownload
cls
set "url="
set /p url="YouTube URL: 
if "%url%" == "" goto ytDownload
yt-dlp.exe "%url%" -f %format% || pause >nul
goto ytDownload
exit
