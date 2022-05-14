@echo off

cls
@REM cd ..
@REM flutter build web

cd build\web
git add *
git commit -m update
git push -u origin master
echo Done