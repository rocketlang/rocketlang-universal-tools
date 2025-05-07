@echo off
echo === CodeRocket One-Click GitHub Setup & Push ===

:: Initialize git if not already
if not exist .git (
    git init
    git remote add origin https://github.com/rocketlang/code-rocket-tools.git
    git branch -M main
)

:: Add and commit
git add .
git commit -m "Initial commit of CodeRocket Universal Tools"

:: Push to GitHub
git push -u origin main

echo === Push complete! Check your GitHub repo. ===
pause
