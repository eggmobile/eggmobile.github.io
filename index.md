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
(() => {
  const items = () => document.querySelectorAll('.tilt');

  const clamp = (v, min, max) => Math.max(min, Math.min(max, v));

  function applyTilt(beta, gamma) {
    const x = clamp(gamma, -12, 12) * 0.35; // 左右
    const y = clamp(beta,  -12, 12) * 0.20; // 前後

    items().forEach(el => {
      // el.style.transform = `translate(${x}px, ${y}px)`;
      const rot = clamp(beta, -12, 12) * 0.08; // 0.05〜0.12で調整
      el.style.transform = `translate(${x}px, ${y}px) rotateX(${rot}deg)`;
    });
  }

  let baseBeta = null;

  window.addEventListener('deviceorientation', (e) => {
    if (e.beta == null || e.gamma == null) return;

    if (baseBeta === null) baseBeta = e.beta;

    const beta = e.beta - baseBeta;   // 相対値にする
    const gamma = e.gamma;

    applyTilt(beta, gamma);
  }, { passive: true });
})();
</script>