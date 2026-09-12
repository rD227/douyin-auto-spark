@echo off
REM Use UTF-8 code page so Chinese output from node renders correctly in this window
chcp 65001 >nul
cd /d D:\douyin-auto-spark
powershell -NoProfile -Command "[Console]::OutputEncoding = [System.Text.Encoding]::UTF8; $w = New-Object System.IO.StreamWriter('D:\douyin-auto-spark\continue-fire.log', $true, (New-Object System.Text.UTF8Encoding($false))); $w.AutoFlush = $true; & 'D:\NodeJS\node.exe' 'D:\douyin-auto-spark\node_modules\tsx\dist\cli.mjs' 'src/main.ts' 2>&1 | ForEach-Object { Write-Host $_; $w.WriteLine($_) }; $w.Close()"
REM Log only, no terminal echo:
REM "D:\NodeJS\node.exe" "D:\douyin-auto-spark\node_modules\tsx\dist\cli.mjs" src/main.ts >> continue-fire.log 2>&1
