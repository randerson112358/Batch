@echo off

for /F "tokens=4,5" %%a in ('dir c:\windows\fonts') do echo %%a %%b

pause