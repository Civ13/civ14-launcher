@echo off
call "./7za/7za.exe" x git.7z -y
call "./git/bin/git.exe" config --global init.defaultBranch master
mkdir scripts
cd scripts/
echo.
echo [93m    Unpacking launcher...[0m
echo.
call "./../git/bin/git.exe" init
call "./../git/bin/git.exe" config core.sparseCheckout true
call "./../git/bin/git.exe" sparse-checkout init
call "./../git/bin/git.exe" sparse-checkout set tools/
call "./../git/bin/git.exe" remote add origin https://github.com/civ13/civ14-launcher
call "./../git/bin/git.exe" branch --set-upstream-to=origin/master master
call "./../git/bin/git.exe" fetch --depth=1 origin master
call "./../git/bin/git.exe" pull origin master
cd..
cd..
mkdir app
cd app/
echo.
echo [93m    Unpacking Civ14 resources...[0m
echo.
call "./../tools/git/bin/git.exe" init
call "./../tools/git/bin/git.exe" config core.sparseCheckout true
call "./../tools/git/bin/git.exe" sparse-checkout init
call "./../tools/git/bin/git.exe" sparse-checkout set Resources/
call "./../tools/git/bin/git.exe" remote add origin https://github.com/civ13/civ14
call "./../tools/git/bin/git.exe" branch --set-upstream-to=origin/master master
call "./../tools/git/bin/git.exe" fetch --depth=1 origin master
call "./../tools/git/bin/git.exe" pull origin master
echo.
echo [93m    Unpacking Robust Toolbox Engine...[0m
echo.
call "./../tools/git/bin/git.exe" clone https://github.com/space-wizards/RobustToolbox RobustToolbox
echo.
echo [93m    Unpacking client executables...[0m
echo.
call "./../tools/git/bin/git.exe" clone https://github.com/taislin/civ14_compileds/ bin
cd bin
call "./../../tools/git/bin/git.exe" branch --set-upstream-to=origin/master master
echo [93mFinished![0m