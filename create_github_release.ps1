# create_github_release.ps1
# Crea una GitHub Release e ci allega l'APK, usando solo le API REST di GitHub
# (nessuna dipendenza da 'gh'). Richiede la variabile d'ambiente GITHUB_TOKEN
# impostata con un Personal Access Token che abbia lo scope "repo".

$ErrorActionPreference = "Stop"

$token = $env:GITHUB_TOKEN
if (-not $token) {
    Write-Host "ERRORE: variabile d'ambiente GITHUB_TOKEN non impostata." -ForegroundColor Red
    Write-Host "Impostala una tantum con: setx GITHUB_TOKEN ""<il_tuo_token_qui>""" -ForegroundColor Yellow
    Write-Host "(poi riapri PowerShell perche' la variabile venga letta)" -ForegroundColor Yellow
    exit 1
}

$remoteUrl = git remote get-url origin
if (-not $remoteUrl) {
    Write-Host "ERRORE: nessun remote 'origin' configurato." -ForegroundColor Red
    exit 1
}

if ($remoteUrl -match "github\.com[:/](?<owner>[^/]+)/(?<repo>[^/.]+)") {
    $owner = $matches['owner']
    $repo  = $matches['repo']
} else {
    Write-Host "ERRORE: non riesco a determinare owner/repo dal remote '$remoteUrl'." -ForegroundColor Red
    exit 1
}

$apkPath = "build\app\outputs\flutter-apk\app-default-release.apk"
if (-not (Test-Path $apkPath)) {
    Write-Host "ERRORE: non trovo l'APK in $apkPath." -ForegroundColor Red
    exit 1
}

$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$tag = "build-$timestamp"

$headers = @{
    Authorization = "Bearer $token"
    Accept        = "application/vnd.github+json"
}

$body = @{
    tag_name = $tag
    name     = "Sossoldi 32-bit - build $timestamp"
    body     = "Build automatica generata da update_sossoldi.bat."
} | ConvertTo-Json

Write-Host "Creo la release $tag su $owner/$repo..." -ForegroundColor Cyan

try {
    $release = Invoke-RestMethod -Uri "https://api.github.com/repos/$owner/$repo/releases" `
        -Method Post -Headers $headers -Body $body -ContentType "application/json"
} catch {
    Write-Host "ERRORE durante la creazione della release: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}

$uploadUrl = ($release.upload_url -replace '\{.*\}', '') + "?name=app-default-release.apk"

Write-Host "Carico l'APK..." -ForegroundColor Cyan

try {
    Invoke-RestMethod -Uri $uploadUrl -Method Post -Headers $headers `
        -InFile $apkPath -ContentType "application/vnd.android.package-archive" | Out-Null
} catch {
    Write-Host "ATTENZIONE: release creata ma upload dell'APK fallito: $($_.Exception.Message)" -ForegroundColor Yellow
    exit 1
}

Write-Host "Release $tag pubblicata con l'APK allegato." -ForegroundColor Green
exit 0
