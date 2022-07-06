@echo off
color 0a
cls
:commands
cls
cd commands
cls
echo command prompt!
echo.
echo type in command!
set /p keyword=
if not exist %keyword%.bat goto error
if exist %keyword%.bat call %keyword%.bat
pause>nul
goto commands

:error
echo bad command!
pause>nul
goto commands