@echo off
color 0a
cls
:1
cls
echo press 1 to get help through coffee os!
echo.
echo press 2 if you know everything!
set /p input=
if %input% == 1 goto help
if %input% == 2 goto setup

:help
cls
call preview.bat
pause>nul

:setup
cls
echo ok, just press any key to go on!
pause>nul