# push.ps1

cd "C:\Users\user\Desktop\ecshop-project-online"
git add .
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
git commit -m "自動更新: $timestamp" --allow-empty
git push origin main
