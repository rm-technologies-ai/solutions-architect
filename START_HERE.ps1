# Set the working directory explicitly first
Set-Location -Path "F:\repos\solutions-architect"

# Launch mem0 server
Write-Host "Starting mem0..." -ForegroundColor Cyan
Start-Process powershell -ArgumentList "-ExecutionPolicy Bypass -File .\launch-mem0.ps1" -NoNewWindow -Wait

# Launch OWUI
Write-Host "Starting OWUI..." -ForegroundColor Cyan
Start-Process powershell -ArgumentList "-ExecutionPolicy Bypass -File .\start-owui.ps1" -NoNewWindow -Wait

Write-Host "All services started. Ready for use." -ForegroundColor Green
