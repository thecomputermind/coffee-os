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
echo booting! (checking files)
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
echo BETA
pause
goto menu

:menu
cls
echo coffee os 1!
echo.
echo type 1 for info
echo.
echo type 2 for installed apps
echo.
echo type 3 for update logs!
set /p input=
if %input% == 1 goto info
if %input% == 2 goto apps
if %input% == 3 goto logs

:info
cls
echo coffee os 1!
echo.
echo WRITTEN ON WINDOWS 11!
echo.
echo build 00A2 (alpha 2)
echo.
echo COFFEE OS 1! 
echo.
echo prerelease version 1!
echo.
echo please be aware that some things may not work!
echo.
echo i would like to drag this on, but that will be on a .txt file
echo.
pause
goto menu

:logs
cls
echo UPDATE LOGS!!
echo.
echo update 00A2 update logs!
echo. 
echo added commands! there are 2 currently!
echo.
echo quality of life has improved, with app data about to be scrapped! (and put into the apps file!!!)
echo.
echo i didnt add an error for the commands file being gone, it is just a normal error, sorry!
echo.
echo PRESS ANY KEY (NOT THE POWER KEY) TO GO BACK TO THE MENU
pause>nul
goto menu


:apps 
cls
echo apps could at anytime just not work
echo.
echo type in the name of the app without
echo.
cd apps
set /p input=
if not exist %input%.bat goto apperror
if exist %input%.bat call %input%.bat
goto menu

:apperror
cls
echo app not found!
echo.
echo type in FILES to see what apps are installed if you typed in a file that doesnt exist! (no extentions, please.)
pause
goto menu

