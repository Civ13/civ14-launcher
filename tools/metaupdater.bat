@echo off
TITLE Civ14 Client Updater
cd scripts/
call "./../git/bin/git.exe" pull --allow-unrelated-histories
cd..
echo Finished updating the launcher.
