# start-owui.ps1

# Navigate to OWUI Project
Set-Location -Path "F:\repos\owui-local"

# Check if OWUI is already running
$owuiRunning = Get-Process -Name "open-webui" -ErrorAction SilentlyContinue

if ($owuiRunning) {
  Write-Host "✅ Open WebUI is already running (PID: $($owuiRunning.Id))" -ForegroundColor Yellow
} else {
  Write-Host "🚀 Starting Open WebUI..." -ForegroundColor Cyan

  # Activate Virtual Environment
  .\venv\Scripts\Activate.ps1

  # Start OWUI in new terminal
  Start-Process powershell -ArgumentList '-NoExit', '-Command', 'open-webui serve'
}
