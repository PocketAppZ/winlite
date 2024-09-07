@echo off
chkdsk /scan /perf /f /sdcleanup c:
rem vssadmin list providers && vssadmin list writers
timeout /t 10 >nul
