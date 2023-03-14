@echo off

@rem 文字コード Shift-JIS -> UTF-8 変更
chcp 65001

@rem set user name
set USER_NAME=sirofyu

@rem git pull
echo git pull
call git pull

java -Xmx1024M -Xms1024M -jar forge-server1.7.10.jar nogui

@rem Git initialization
echo git init
call git init

@rem Commit all the files you have changed.
echo git add .
call git add .
echo git commit -m "first commit"
call git commit -m "first commit"

@rem Set remote repository settings.
echo git branch -M master
call git branch -M master
echo git remote add origin https://github.com/sirofyu/PfcMcDate.git
call git remote add origin https://github.com/sirofyu/PfcMcDate.git

@rem Check remote repository settings.
echo git remote -v
call git remote -v

@rem Push remote repository.
echo git push -u origin master
call git push -u origin master

echo Press the key to exit ...
pause > NUL

exit
pause