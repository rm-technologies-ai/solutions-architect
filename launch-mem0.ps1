# launch-mem0.ps1

# Navigate to mem0 project directory
Set-Location "F:\repos\mem0\openmemory"

# Check if mem0 container is already running
$mem0Running = docker ps --filter "name=mem0" --filter "status=running" --format "{{.Names}}"

if ($mem0Running) {
  Write-Host "✅ mem0 container is already running: $mem0Running" -ForegroundColor Yellow
} else {
  Write-Host "🚀 Starting mem0 using docker-compose..." -ForegroundColor Cyan
  docker-compose up -d
}
