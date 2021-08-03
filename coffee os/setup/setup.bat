@echo off
color 0a
cls
:1
cls
echo setup will start, if you are using dos, make sure autoexec.bat is in C:\, or it wont work
echo.
echo we will do things
if not exist %appdata%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup goto 2
if exist %appdata%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup goto 3

:2
copy autoexec.bat C:\
CD "coffee os\"
md activated.txt

:3
copy start.bat %appdata%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
cd "coffee os\"
md activated.txt
