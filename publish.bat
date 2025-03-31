@echo off
REM 切换到脚本所在目录
pushd "%~dp0"

REM 获取当前系统日期时间（格式：年-月-日_时-分-秒）
for /f "tokens=*" %%a in ('powershell -Command "Get-Date -Format 'yyyy-MM-dd_HH-mm-ss'"') do set datetime=%%a

REM 执行Git操作
git add .
git commit -m "Auto commit %datetime%"
git push

REM 返回原始目录
popd