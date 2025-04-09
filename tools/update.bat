if not exist "./../initialized" (
  echo initialized > ./../initialized
  call "./init.bat" >nul
)
cd..
cd app/
call "./../tools/git/bin/git.exe" pull
cd RobustToolbox/
call "./../../tools/git/bin/git.exe" pull
cd..
cd Content.Client/
call "./../../tools/git/bin/git.exe" pull
echo Finished updating.
