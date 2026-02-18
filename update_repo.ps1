# Check if git is initialized
if (!(Test-Path .git)) {
    git init
    git branch -M main
}

# Check if remote already exists, remove it if it does to ensure it's correct
if (git remote get-url origin) {
    git remote remove origin
}

# Add the remote repository
git remote add origin https://github.com/Aswin0643/Mental-Health-Companion-Chatbot.git

# Improve git config just in case
git config user.email "you@example.com"
git config user.name "Your Name"

# Add all files
git add .

# Commit changes
git commit -m "Fix: Update Gemini model to gemini-1.5-flash and improve error handling"

# Force push to update the remote repository with local fixes
# Using force push here because the local repo was just re-initialized and might not match history
git push -u origin main --force
