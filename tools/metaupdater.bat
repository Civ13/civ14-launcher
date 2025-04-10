@echo off
TITLE Civ14 Client Updater
cd scripts/
call "./../git/bin/git.exe" reset --hard origin/master
cd..
echo Finished updating the launcher.
