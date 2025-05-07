@echo off
echo === CodeRocket Migration Runner ===
cd /d %~dp0
echo Running migration scripts...

:: Example 1: Copy important folders from old to new repo
robocopy "%CD%\..\coderocket\data" "%CD%\..\coderocket-next\data" /E /XO
robocopy "%CD%\..\coderocket\src" "%CD%\..\coderocket-next\src" /E /XO
robocopy "%CD%\..\coderocket\syntax" "%CD%\..\coderocket-next\syntax" /E /XO
robocopy "%CD%\..\coderocket\ip_collateral" "%CD%\..\coderocket-next\ip_collateral" /E /XO
robocopy "%CD%\..\coderocket\tests" "%CD%\..\coderocket-next\tests" /E /XO

echo ✅ Migration tasks completed!
pause
