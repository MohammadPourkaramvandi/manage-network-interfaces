@echo off
:main_menu
color a
cls
echo ==============================
echo        Network Manager
echo ==============================
for /f "skip=3 tokens=1,* delims= " %%i in ('netsh interface show interface') do echo %%j
echo ==============================
echo Select an option:
echo 1. Disable a network interface
echo 2. Enable a network interface
echo 3. Exit
echo ==============================
set /p choice="Enter your choice (1-3): "

if "%choice%"=="1" goto disable_interface
if "%choice%"=="2" goto enable_interface
if "%choice%"=="3" goto exit
echo Invalid choice. Please try again.
pause
goto main_menu

:disable_interface
cls
echo ==============================
echo      Disable Network Interface
echo ==============================
for /f "skip=3 tokens=1,* delims= " %%i in ('netsh interface show interface') do echo %%j
echo ==============================
set /p interface="Enter the interface name to disable: "
netsh interface set interface name="%interface%" admin=disable
echo Interface "%interface%" has been disabled.
pause
goto main_menu

:enable_interface
cls
echo ==============================
echo       Enable Network Interface
echo ==============================
for /f "skip=3 tokens=1,* delims= " %%i in ('netsh interface show interface') do echo %%j
echo ==============================
set /p interface="Enter the interface name to enable: "
netsh interface set interface name="%interface%" admin=enable
echo Interface "%interface%" has been enabled.
pause
goto main_menu

:exit
echo Goodbye!
pause
exit
