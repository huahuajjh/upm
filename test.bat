@echo off

git pull origin master
if %ERRORLEVEL% NEQ 0 (
	echo git pull origin masterָ��ִ�г��ִ���:�����˳�
	@pause 
	exit
) else ( echo git pull origin masterָ��ִ�гɹ�)

git status
if %ERRORLEVEL% NEQ 0 (
	echo git statusָ��ִ�г��ִ���:�����˳�
	@pause 
	exit
) else ( echo git statusָ��ִ�гɹ�)

git add .
if %ERRORLEVEL% NEQ 0 (
	echo git addָ��ִ�г��ִ���:�����˳�
	@pause 
	exit
) else ( echo git addָ��ִ�гɹ�)

set commit_info
echo �����뱾���ύ��������Ϣ
set /p commit_info=
git commit -m %commit_info%
if %ERRORLEVEL% NEQ 0 (
	echo git commitָ��ִ�г��ִ���:�����˳�
	@pause 
	exit
) else ( echo git commitָ��ִ�гɹ�)

git push origin master
if %ERRORLEVEL% NEQ 0 (
	echo git push origin masterָ��ִ�г��ִ���:�����˳�
	@pause 
	exit
) else ( echo git push origin masterָ��ִ�гɹ�)

@pause