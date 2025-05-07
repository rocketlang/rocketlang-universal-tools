# CodeRocket Universal Tools

This repository provides reusable scripts to help layman users:
✅ Automate GitHub updates (push/pull)
✅ Set up project folders
✅ Launch local apps with logging
✅ Receive laptop popups for API warnings
✅ Send email alerts

### Scripts included:
- push_to_github.bat
- auto-folder-creator.bat
- combined-mega-script.bat
- setup_and_push_to_github.bat
- send_email_alert.py
- api_usage_popup.py

## 🚀 CodeRocket Universal Tools

This toolkit contains:
- `auto_update_coderocket.bat` → Pulls latest repo updates
- `run_migrations.bat` → Copies updated files between old and new CodeRocket repos
- `push_to_github.bat` → Commits and pushes to GitHub (via HTTPS)
- `launch_coderocket_app.bat` → Launches the CodeRocket GUI app
- `check_api_usage.py` → Checks API usage + triggers alerts
- `code_rocket_launcher.bat` → Master launcher script with menu for all tasks

### 📦 Folder Structure
code-rocket-tools/
├── .gitignore
├── README.md
├── auto_update_coderocket.bat
├── run_migrations.bat
├── push_to_github.bat
├── launch_coderocket_app.bat
├── check_api_usage.py
├── code_rocket_launcher.bat


### 🛠 How to Use
1️⃣ Place all files in the same folder  
2️⃣ Double-click `code_rocket_launcher.bat` → use the interactive menu  
3️⃣ Or run individual `.bat` scripts as needed

---

### 📡 GitHub Upload Instructions (HTTPS)

1️⃣ **Go to GitHub → Create Repo**
- Visit [github.com](https://github.com)
- Create new repository → name it (e.g., `code-rocket-tools`)
- DO NOT initialize with README, .gitignore, or license

2️⃣ **Prepare Local Folder**
- Place all scripts + README in a local folder (e.g., `C:/Users/HP/code-rocket-tools`)

3️⃣ **Open Terminal (Git Bash or VS Code)**
```bash
cd /c/Users/HP/code-rocket-tools
git init
git remote add origin https://github.com/rocketlang/code-rocket-tools.git
git add .
git commit -m "Initial commit of CodeRocket Tools"
git push -u origin main


Originally crafted for Captain Anil Sharma (powerpbox@gmail.com), but designed to help anyone!

Feel free to fork, improve, and adapt.

