@echo off
color 0a
cls
:boot 
cls
echo booting!
cd 
if not exist "bootchk.bat" call "\ERRORS\noboot.bat"
if exist bootchk.bat call bootchk.bat
if not exist "\setup\setup.bat" call "\ERRORS\setupfail.bat"
goto booted
:booted
cls
echo finished booting, it is safe to go on!
pause>NUL
goto start 
:start
cls
echo coffee os 1! 
echo.
echo coffee os! powered by batch!
echo.
echo BETA PREVIEW
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
echo build 1.00B PREVIEW (version B100P)
echo.
echo COFFEE OS 1! 
echo.
echo coming in beta (likely)
echo.
echo MORE APPS!
echo.
echo command line! (may be built in or an app...)
echo.
echo still trying to make setup work..
echo.
echo and more (in github)
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