@echo off
REM 切换到脚本所在目录
pushd "%~dp0"

hexo clean&&hexo g&&hexo s