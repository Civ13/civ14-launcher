@echo off
TITLE Civ14 Client Updater
cd scripts/
call "./../git/bin/git.exe" pull
cd..
echo Finished updating the launcher.
