$ErrorActionPreference = "Continue"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $root

Write-Host "`n===== UPDATE GALLERY =====" -ForegroundColor Cyan

# 1. Scan albums folder and generate manifest.json
Write-Host "`n[1/3] Scanning albums/ folder..." -ForegroundColor Yellow

$excludeAlbums = @("Váy Xinh")
$albums = @()
Get-ChildItem -Path "albums" -Directory | ForEach-Object {
    $name = $_.Name
    if ($excludeAlbums -contains $name) {
        Write-Host "  $($name): [HIDDEN]" -ForegroundColor DarkGray
        return
    }
    $files = Get-ChildItem -Path $_.FullName -File | Where-Object { $_.Extension -match '\.(jpg|jpeg|png|gif|webp)$' }
    
    $albumObj = [ordered]@{
        name   = $name
        folder = "albums/$name"
        images = @()
    }
    
    foreach ($f in $files) {
        $albumObj.images += @{
            url     = "albums/$name/$($f.Name)"
            caption = [System.IO.Path]::GetFileNameWithoutExtension($f.Name)
        }
    }
    
    $albums += $albumObj
    Write-Host "  $($name): $($files.Count) images" -ForegroundColor Gray
}

$json = $albums | ConvertTo-Json -Depth 5
$manifestPath = Join-Path $root "manifest.json"
[System.IO.File]::WriteAllText($manifestPath, $json, [System.Text.UTF8Encoding]::new($false))
Write-Host "  -> manifest.json generated ($($albums.Count) albums)" -ForegroundColor Green

# 2. Git add + commit
Write-Host "`n[2/3] Committing changes..." -ForegroundColor Yellow
& git add -A 2>&1 | Out-Null

$status = & git status --porcelain 2>&1
if (-not $status) {
    Write-Host "  No changes to commit. Everything is up to date." -ForegroundColor Green
    exit 0
}

$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
& git commit -m "update: gallery photos ($timestamp)" 2>&1 | Out-Null
Write-Host "  -> Committed" -ForegroundColor Green

# 3. Git push
Write-Host "`n[3/3] Pushing to GitHub..." -ForegroundColor Yellow
& git push 2>&1 | Out-Null
Write-Host "  -> Pushed successfully" -ForegroundColor Green

Write-Host "`n===== DONE =====" -ForegroundColor Cyan
Write-Host "GitHub Pages will update in 1-2 minutes.`n" -ForegroundColor White
