@echo off
color 0a
cls
:boot 
cls
echo booting!
cd 
if not exist bootchk.bat call ERRORS\noboot.bat
if exist bootchk.bat call bootchk.bat
if not exist setup\setup.bat call ERRORS\setupfail.bat
if not exist activate.txt call setup\setup.bat
goto 1 
:1
cls
echo coffee os 1! 
echo.
echo coffee os! powered by batch!
echo.
pause
goto menu

:menu
cls
echo coffee os 1!
echo.
echo type 1 for info
echo.
echo type 2 for installed apps (may not have any apps)
set /p input=
if %input% == 1 goto info
if %input% == 2 goto apps

:info
cls
echo coffee os 1!
echo.
echo WRITTEN ON WINDOWS 11!
echo.
echo build 2k21y01 (version A01)
echo.
echo COFFEE OS 1! 
echo.
pause
goto menu

:apps 
cls
echo APPS MAY HAVE ERRORS, I WILL FIX IT!
echo.
echo type in the name of the app
echo.
cd apps
set /p input=
call %input%
if not exist %input% goto apperror
if exist %input% goto menu
goto menu

:apperror
cls
echo app not found or app is done!
echo.
echo type in FILES or FILES.BAT to see what apps are installed if you typed in a file that doesnt exist!
pause
goto menu