@echo off
REM �л����ű�����Ŀ¼
pushd "%~dp0"

REM ��ȡ��ǰϵͳ����ʱ�䣨��ʽ����-��-��_ʱ-��-�룩
for /f "tokens=*" %%a in ('powershell -Command "Get-Date -Format 'yyyy-MM-dd_HH-mm-ss'"') do set datetime=%%a

REM ִ��Git����
git add .
git commit -m "Auto commit %datetime%"
git push

REM ����ԭʼĿ¼
popd