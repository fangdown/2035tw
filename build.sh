#!/bin/bash
# 更新代码
git pull origin main
# 更新包
npm i 

# 构建
npm run build

# 启动

pm2 start 