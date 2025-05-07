@echo off
title CodeRocket Launcher - Captain's Console

:MENU
cls
echo ==========================================
echo        🚀 CodeRocket Launcher Menu 🚀
echo ==========================================
echo [1] Pull latest updates from GitHub
echo [2] Push changes to GitHub
echo [3] Run migration scripts
echo [4] Launch CodeRocket App
echo [5] Check API usage (popup + email)
echo [0] Exit
echo ==========================================
set /p choice=Enter your choice: 

if "%choice%"=="1" (
    call auto_update_coderocket.bat
    pause
    goto MENU
)
if "%choice%"=="2" (
    call push_to_github.bat
    pause
    goto MENU
)
if "%choice%"=="3" (
    call run_migrations.bat
    pause
    goto MENU
)
if "%choice%"=="4" (
    call launch_coderocket_app.bat
    pause
    goto MENU
)
if "%choice%"=="5" (
    python check_api_usage.py
    pause
    goto MENU
)
if "%choice%"=="0" (
    exit
)
goto MENU
