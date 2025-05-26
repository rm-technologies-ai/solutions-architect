# git-push-all.ps1

# Navigate to repo root
Set-Location "F:\repos\solutions-architect"

# Add all changes (new, modified, deleted)
git add -A

# Commit with a timestamp-based message
$commitMessage = "Auto commit on $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
git commit -m $commitMessage

# Push to main branch
git push origin main

Write-Host "✅ Changes pushed to 'main' successfully." -ForegroundColor Green
