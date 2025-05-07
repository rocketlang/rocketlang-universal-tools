@echo off
echo === Launching CodeRocket Application ===
cd /d %~dp0

:: Check if main app file exists
if exist "%CD%\CodeRocket_GUI.exe" (
    echo ✅ Found CodeRocket executable, launching now...
    start "" "%CD%\CodeRocket_GUI.exe"
) else (
    echo ⚠ CodeRocket_GUI.exe not found! Please build or place the executable in this folder.
)

pause
