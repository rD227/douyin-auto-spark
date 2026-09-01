@echo off
cd /d D:\douyin-auto-spark
"D:\NodeJS\node.exe" "D:\douyin-auto-spark\node_modules\tsx\dist\cli.mjs" src/main.ts >> continue-fire.log 2>&1
