$root = "C:\Users\user\Desktop\ecshop-project-online"

@'
<!doctype html>
<html lang="ja">
<head>
  <meta charset="utf-8">
  <title>クラファン ランキング</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    body { font-family: sans-serif; padding: 2em; }
    h1 { font-size: 1.8em; margin-bottom: 1em; }
    ul { line-height: 1.8em; }
    a { color: #3366cc; text-decoration: none; }
    a:hover { text-decoration: underline; }
  </style>
</head>
<body>
  <h1>クラウドファンディング ランキング</h1>
  <ul>
    <li><a href="https://www.makuake.com/discover/most-funded/" target="_blank">マクアケ ランキングページへ</a></li>
    <li><a href="https://camp-fire.jp/projects/736263" target="_blank">CAMPFIRE プロジェクトページへ</a></li>
  </ul>
  <p>※ 最新ランキングは外部ページにて自動更新されます。</p>
</body>
</html>
'@ | Out-File -Encoding utf8 -FilePath "$root\ranking.html"
