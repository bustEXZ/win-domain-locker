@ECHO off
SETLOCAL
SET "IP"=100.100.100.100
SET "HOSTS=%WinDir%\System32\drivers\etc\hosts"
SET "TEMP_HOSTS=%TEMP%\%RANDOM%__hosts"

FINDSTR /V "%IP%" "%HOSTS%" > "%TEMP_HOSTS%"

COPY /b/v/y "%TEMP_HOSTS%" "%HOSTS%"
EXIT /B