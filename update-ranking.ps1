$root = "C:\Users\user\Desktop\ecshop-project-online"
$pitchPath = "$root\pitch\index.html"

$html = Get-Content $pitchPath -Raw -Encoding UTF8

# 既存クラファンランキングセクション削除
$html = $html -replace '(?s)<section>\s*<h2>クラファン ランキング</h2>.*?</section>', ''
$html = $html -replace '(?s)<section>\s*<h2>クラウドファンディングランキング</h2>.*?</section>', ''

# 既存年間スケジュールセクション削除（年間スケジュール全体のざっくり除去。内容に応じて調整してください）
$html = $html -replace '(?s)<section>\s*<h2>年間スケジュール.*?</section>', ''

# 新規クラファンiframeセクション
$iframe = @"
<section>
  <h2>クラファン ランキング</h2>
  <iframe src="../ranking.html" style="width:100%; height:600px; border:none; background:white;"></iframe>
</section>
"@

# 新規半年ごとスケジュールセクション（上半期・下半期）
$halfYearSections = @'
<section>
  <h2>年間スケジュール（上半期）</h2>
  <div style="max-height: 70vh; overflow-y: auto; padding-right: 1em;">
    <h3>1月：EC設立・撮影・SNS初期構築</h3>
    <ul>
      <li>商品撮影・LP作成</li>
      <li>SNSアカウント設計（Instagram中心）</li>
    </ul>
    <h3>2月：Shopify登録・広告準備</h3>
    <ul>
      <li>Shopify本登録</li>
      <li>Google広告／Meta広告セットアップ</li>
    </ul>
    <h3>3月：SNS本運用・POPUP・展示会</h3>
    <ul>
      <li>リアルイベントでのブランド認知強化</li>
      <li>来場者アンケートによるフィードバック収集</li>
    </ul>
    <h3>4月：SEO強化・データ分析</h3>
    <ul>
      <li>GA4／GSC 導入、SNSパターン分析</li>
      <li>CVR改善のための導線チェック</li>
    </ul>
    <h3>5月：マクアケ掲載</h3>
    <ul>
      <li>中間試験としてのマクアケプロジェクト実施</li>
      <li>支援者への訴求構成とページ制作</li>
    </ul>
    <h3>6月：プロモーション拡張・後半戦略設計</h3>
    <ul>
      <li>広告素材の多様化・UGC導入</li>
      <li>年末を見据えた販促計画立案</li>
    </ul>
  </div>
</section>

<section>
  <h2>年間スケジュール（下半期）</h2>
  <div style="max-height: 70vh; overflow-y: auto; padding-right: 1em;">
    <h3>7月：キャンプファイヤー実施</h3>
    <ul>
      <li>マクアケの成果を活かした拡販</li>
      <li>BtoB展開・法人提案スタート</li>
    </ul>
    <h3>8月：CS強化・リピート対策</h3>
    <ul>
      <li>購入後のサポート体制整備</li>
      <li>FAQ・チャットボット実装</li>
    </ul>
    <h3>9月：CRM設計・ステップメール施策</h3>
    <ul>
      <li>顧客属性別にLINEやメール配信</li>
      <li>LTV最大化施策を実行</li>
    </ul>
    <h3>10月：業務効率化・自動化ツール導入</h3>
    <ul>
      <li>Shopify Flow や API連携で在庫〜発送を自動化</li>
      <li>RPA・スクリプトでの省力化</li>
    </ul>
    <h3>11月：年末販促キャンペーン</h3>
    <ul>
      <li>リアル×オンライン連動販促</li>
      <li>年末の最大売上タイミングに集中施策</li>
    </ul>
    <h3>12月：年間総括・次年度準備</h3>
    <ul>
      <li>1年の数値評価と総括レポート作成</li>
      <li>次年度のルーティーンカレンダー策定</li>
    </ul>
  </div>
</section>
'@

# 挿入場所は</div></div>の直前あたりが多いので、そこに追加（必要なら修正してください）
$html = $html -replace '(</div></div>)', "$halfYearSections`n$iframe`n$1"

# 上書き保存
$html | Set-Content -Encoding UTF8 -Path $pitchPath

Write-Output "✅ クラファンランキング削除＋半年ごと年間スケジュール＋クラファンiframeセクションを追加しました。"
