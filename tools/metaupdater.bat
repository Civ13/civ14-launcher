@echo off
TITLE Civ14 Client Updater
cd scripts/
call "./../git/bin/git.exe" pull  origin master --allow-unrelated-histories
cd..
echo Finished updating the launcher.
