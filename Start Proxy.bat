@echo off
title Freedogs - Luom Airdrop Auto
setlocal

:: Open terminal here
cd /d %~dp0

:: Set Welcome
echo Tool Free - Luom Airdrop Auto

:: Check version Node.js
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo Node.js Not installed yet. Please install Node.js first
    exit /b 1
)

:: Run npm install
if not exist node_modules (
    echo The node_modules directory not found. Run npm install...
    npm install
) else (
    echo Installed successfully. Luom Airdrop Auto
)

:: Run index.js for Node.js
echo Loading Tool...
node freedogs-proxy.js

:: pause
pause

endlocal
