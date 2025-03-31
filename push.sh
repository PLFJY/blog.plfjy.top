#!/bin/bash

# 切换到脚本所在目录
cd "$(dirname "$0")" || { echo "切换目录失败"; exit 1; }

# 获取当前系统日期时间（格式：年-月-日_时-分-秒）
datetime=$(date +"%Y-%m-%d_%H-%M-%S")

# 执行 Git 操作
git add .
git commit -m "Auto commit $datetime"
git push

# 检查命令执行状态
if [ $? -eq 0 ]; then
    echo "提交和推送成功！"
else
    echo "操作失败，请检查错误信息。"
fi