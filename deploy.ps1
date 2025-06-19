# ecshop-project-online 自動生成スクリプト
# 管理者で実行すること。途中停止禁止。

Write-Host "
🚀 プロジェクト初期化開始" -ForegroundColor Cyan

# 日付取得
 = Get-Date -Format "yyyyMMdd"

# ディレクトリ構成
 = @(
    "lp",
    "pitch",
    "styles",
    "assets/images",
    "assets/videos",
    "data",
    "config",
    "logs",
    "archive",
    "reveal.js"
)

foreach ( in ) {
     = Join-Path C:\Users\user\Desktop\ecshop-project-online 
    if (-not (Test-Path )) {
        New-Item -ItemType Directory -Path  | Out-Null
        Write-Host "📁  作成"
    }
}

# 初期ファイル作成
Set-Content "C:\Users\user\Desktop\ecshop-project-online\lp\index.html" '<!DOCTYPE html><html><head><link rel="stylesheet" href="../styles/app.css"></head><body><h1>ECショップ LP</h1></body></html>'
Set-Content "C:\Users\user\Desktop\ecshop-project-online\pitch\index.html" '<!DOCTYPE html><html><head><link rel="stylesheet" href="../styles/app.css"></head><body><div class="reveal"><div class="slides">スライドをここに</div></div></body></html>'
Set-Content "C:\Users\user\Desktop\ecshop-project-online\pitch\slides.md" "# タイトル
- スライド内容"
Set-Content "C:\Users\user\Desktop\ecshop-project-online\styles\app.css" 'body { font-family: -apple-system, BlinkMacSystemFont, sans-serif; margin: 0; padding: 2rem; background: #fff; color: #000; }'
Set-Content "C:\Users\user\Desktop\ecshop-project-online\data\products.csv" "商品名,価格,カテゴリ"
Set-Content "C:\Users\user\Desktop\ecshop-project-online\config\settings.json" '{ "theme": "default", "version": "1.0.0" }'
Set-Content "C:\Users\user\Desktop\ecshop-project-online\.gitignore" "logs/
archive/
*.log
*.zip"
Set-Content "C:\Users\user\Desktop\ecshop-project-online\README.md" "# ecshop-project-online

## 使用方法：
1. PowerShellを管理者で実行
2. GitHub Pages設定"

# reveal.js ダウンロード（失敗しても手動で可）
try {
     = "https://github.com/hakimel/reveal.js/releases/download/4.6.2/reveal.js-4.6.2.zip"
     = "C:\Users\user\Desktop\ecshop-project-online\reveal.zip"
    Invoke-WebRequest  -OutFile 
    Expand-Archive -Path  -DestinationPath C:\Users\user\Desktop\ecshop-project-online -Force
    Move-Item "C:\Users\user\Desktop\ecshop-project-online\reveal.js-4.6.2" "C:\Users\user\Desktop\ecshop-project-online\reveal.js" -Force
    Remove-Item 
    Write-Host "✅ reveal.js ダウンロード完了"
} catch {
    Write-Warning "⚠️ reveal.js ダウンロード失敗。手動配置してください"
}

# GitHubブランチ切替指示（ポーズ）
Write-Host "
=============================="
Write-Host "🔄 GitHub Pages用 gh-pagesブランチに切り替えてください"
Write-Host "⚠️ 手動でGitHubページ root設定する必要があります"
Write-Host "⏸️ 10分以内に戻ってEnterキーを押してください"
Write-Host "==============================
"
Pause
