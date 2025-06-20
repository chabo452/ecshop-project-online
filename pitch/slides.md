---
title: EC支援提案
author: 野口慧
theme: black
transition: fade
---

# 提案資料

---

## 支援内容

- 商品撮影
- LP制作
- SNS運用
- Shopify構築

---

## チェック式パッケージ

<input type="checkbox" class="cost" data-cost="60000" checked> モデル撮影（¥60,000）  
<input type="checkbox" class="cost" data-cost="80000" checked> 動画制作（¥80,000）  
<input type="checkbox" class="cost" data-cost="30000" checked> 工場紹介（¥30,000）  

**合計金額：<span id='total'>¥170,000</span>**

<script>
  function updateTotal() {
    let total = 0;
    document.querySelectorAll('.cost').forEach(cb => {
      if (cb.checked) total += parseInt(cb.dataset.cost);
    });
    document.getElementById('total').textContent = ¥;
  }
  document.querySelectorAll('.cost').forEach(cb => cb.addEventListener('change', updateTotal));
  updateTotal();
</script>

---
