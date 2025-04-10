call "./7za/7za.exe" x git.7z -y
call "./git/bin/git.exe" config --global init.defaultBranch master
mkdir scripts
cd scripts/
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
cd app/
call "./../tools/git/bin/git.exe" init
call "./../tools/git/bin/git.exe" config core.sparseCheckout true
call "./../tools/git/bin/git.exe" sparse-checkout init
call "./../tools/git/bin/git.exe" sparse-checkout set Resources/
call "./../tools/git/bin/git.exe" remote add origin https://github.com/civ13/civ14
call "./../tools/git/bin/git.exe" branch --set-upstream-to=origin/master master
call "./../tools/git/bin/git.exe" fetch --depth=1 origin master
call "./../tools/git/bin/git.exe" pull origin master
call "./../tools/git/bin/git.exe" clone https://github.com/space-wizards/RobustToolbox RobustToolbox
cd bin/
call "./../../tools/git/bin/git.exe" clone https://github.com/taislin/civ14_compiled_client/ Content.Client