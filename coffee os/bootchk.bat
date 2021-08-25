@echo off
cls
:1
cls
echo finding files.bat
cd 
if not exist "coffee os\apps\files.bat" call "coffee os\ERRORS\nofile.bat"
if exist "coffee os\apps\files.bat" goto 2


:2
cls
echo found registries
echo.
echo press any key to start coffee os!
cls