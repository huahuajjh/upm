@echo off

git pull origin master
if %ERRORLEVEL% NEQ 0 (
	echo git pull origin master指令执行出现错误:即将退出
	@pause 
	exit
) else ( echo git pull origin master指令执行成功)

git status
if %ERRORLEVEL% NEQ 0 (
	echo git status指令执行出现错误:即将退出
	@pause 
	exit
) else ( echo git status指令执行成功)

git add .
if %ERRORLEVEL% NEQ 0 (
	echo git add指令执行出现错误:即将退出
	@pause 
	exit
) else ( echo git add指令执行成功)

set commit_info
echo 请输入本次提交的描述信息
set /p commit_info=
git commit -m %commit_info%
if %ERRORLEVEL% NEQ 0 (
	echo git commit指令执行出现错误:即将退出
	@pause 
	exit
) else ( echo git commit指令执行成功)

git push origin master
if %ERRORLEVEL% NEQ 0 (
	echo git push origin master指令执行出现错误:即将退出
	@pause 
	exit
) else ( echo git push origin master指令执行成功)

@pause