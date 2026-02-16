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

  function applyTilt(beta, gamma) {
    // beta: 前後(-180..180), gamma: 左右(-90..90)
    const clamp = (v, min, max) => Math.max(min, Math.min(max, v));
    const x = clamp(gamma, -12, 12) * 0.35; // 左右
    const y = clamp(beta,  -12, 12) * 0.20; // 前後

    items().forEach(el => {
      el.style.transform = `translate(${x}px, ${y}px)`;
    });
  }

  function start() {
    window.addEventListener('deviceorientation', (e) => {
      if (e.beta == null || e.gamma == null) return;
      applyTilt(e.beta, e.gamma);
    }, { passive: true });

    let dbg = document.getElementById('tilt-debug');
    if (!dbg) {
      dbg = document.createElement('div');
      dbg.id = 'tilt-debug';
      dbg.style.cssText = 'position:fixed;left:10px;bottom:10px;font-size:12px;z-index:9999;color:#666;background:rgba(255,255,255,.7);padding:6px 8px;border-radius:8px;';
      document.body.appendChild(dbg);
    }
    dbg.textContent = `beta:${e.beta.toFixed(1)} gamma:${e.gamma.toFixed(1)}`;

  }

  // iOS Safari: permission required
  const needsPermission =
    typeof DeviceOrientationEvent !== 'undefined' &&
    typeof DeviceOrientationEvent.requestPermission === 'function';

  if (needsPermission) {
    // 小さく控えめな許可ボタンを出す（トップだけの「遊び」なので）
    const btn = document.createElement('button');
    btn.textContent = 'tilt on';
    btn.style.cssText = `
      position: fixed; right: 12px; bottom: 12px; z-index: 9999;
      font-size: 12px; padding: 8px 10px; border-radius: 999px;
      border: 1px solid rgba(0,0,0,.15); background: rgba(255,255,255,.85);
      color: #333;
    `;
    document.body.appendChild(btn);

    btn.addEventListener('click', async () => {
      try {
        const res = await DeviceOrientationEvent.requestPermission();
        if (res === 'granted') {
          start();
          btn.remove();
        } else {
          btn.textContent = 'tilt off';
        }
      } catch (err) {
        btn.textContent = 'tilt error';
        console.log(err);
      }
    });
  } else {
    // Android Chromeなどは許可なしで動くことが多い
    start();
  }
})();
</script>