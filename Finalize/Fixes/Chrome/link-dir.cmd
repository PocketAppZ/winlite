@echo off
mklink /j "%localappdata%\Chromium" "%temp%" 
timeout /t 3 >nul
