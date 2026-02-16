---
layout: default
title: eggmobile
permalink: /
---

<div class="home-intro">
  <h1 class="home-title">eggmobile</h1>
  <p class="home-subtitle">Works archive by Murayama Yoichi</p>
</div>

<ul class="area-grid">
  <li class="area-item tilt">
    <a class="area-card" href="/grad/">
      <img class="area-img" src="/assets/images/cover/grad.jpg" alt="Graduation Project">
      <div class="area-label">
        卒業制作<br>京都芸術大学 通信教育部<br>グラフィックデザインコース (2026)
      </div>
    </a>
  </li>

  <li class="area-item tilt">
    <a class="area-card" href="/sneakers/">
      <img class="area-img" src="/assets/images/cover/sneakers.jpg" alt="Sneaker Works">
      <div class="area-label">スニーカー星人 (2024 ~ )</div>
    </a>
  </li>

  <li class="area-item tilt">
    <a class="area-card" href="/apparel/">
      <img class="area-img" src="/assets/images/cover/apparel.jpg" alt="Apparel">
      <div class="area-label">Tシャツ (2025)</div>
    </a>
  </li>

  <li class="area-item tilt">
    <a class="area-card" href="/ukkuriman/">
      <img class="area-img" src="/assets/images/cover/ukkuriman.jpg" alt="Ukkuriman">
      <div class="area-label">うっクリマン (2025)</div>
    </a>
  </li>

  <li class="area-item tilt">
    <a class="area-card" href="/apps/">
      <img class="area-img" src="/assets/images/cover/apps.jpg" alt="Software">
      <div class="area-label">アプリ開発 (2025)</div>
    </a>
  </li>
</ul>

<script>
if (window.DeviceOrientationEvent) {
  window.addEventListener('deviceorientation', function(e) {
    const gamma = e.gamma || 0; // 左右
    const beta = e.beta || 0;   // 前後

    const x = Math.max(-10, Math.min(10, gamma)) * 0.4;
    const y = Math.max(-10, Math.min(10, beta)) * 0.2;

    document.querySelectorAll('.tilt').forEach(el => {
      el.style.transform = `translate(${x}px, ${y}px)`;
    });
  });
}
</script>