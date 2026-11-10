# D:\HoneyCraft\web-adfit\push-ad.ps1
Set-Location -Path $PSScriptRoot

$status = git status --porcelain
if ($status) {
    git add .
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    git commit -m "update: 광고 및 웹 인증 페이지 업데이트 ($timestamp)"
    git push origin main
    Write-Host "✅ GitHub(HoneyAdfitCraft) 자동 푸시 완료!" -ForegroundColor Green
} else {
    Write-Host "ℹ️ 변경된 파일이 없습니다." -ForegroundColor Yellow
}
