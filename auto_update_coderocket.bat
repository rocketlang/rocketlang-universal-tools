@echo off
echo === CodeRocket Auto-Updater ===
cd /d %~dp0
echo Pulling latest updates from GitHub...
git pull origin main
if %ERRORLEVEL% neq 0 (
    echo ❌ Git pull failed. Please check your connection or repository.
) else (
    echo ✅ Successfully pulled latest updates!
)
pause
