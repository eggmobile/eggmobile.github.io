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
      const rot = clamp(beta, -12, 12) * 0.08; // 0.05〜0.12で調整
      el.style.transform = `translate(${x}px, ${y}px) rotateX(${rot}deg)`;
    });
  }

  let baseBeta = null;
  let started = false;

  function start() {
    if (started) return;
    started = true;

    window.addEventListener('deviceorientation', (e) => {
      if (e.beta == null || e.gamma == null) return;

      if (baseBeta === null) baseBeta = e.beta;

      const beta = e.beta - baseBeta; // 相対値
      const gamma = e.gamma;

      applyTilt(beta, gamma);
    }, { passive: true });
  }

  // iOS Safari はユーザー操作(タップ)の中で許可が必要
  const needsPermission =
    typeof DeviceOrientationEvent !== 'undefined' &&
    typeof DeviceOrientationEvent.requestPermission === 'function';

  if (!needsPermission) {
    // Android Chrome 等はそのまま開始できることが多い
    start();
    return;
  }

  // 画面のどこでも良いので「最初のタップ」で許可を取る（ボタン無し）
  // NOTE: iOS Safari は "window のイベント" だと許可ダイアログが出ないことがあるため、
  //       透明なフルスクリーン要素でユーザー操作を確実に捕まえる。
  const gate = document.createElement('div');
  gate.setAttribute('aria-hidden', 'true');
  gate.style.cssText = 'position:fixed;inset:0;z-index:9999;background:transparent;';

  // うっすらヒント（ボタンではない）
  const hint = document.createElement('div');
  hint.textContent = 'tap once to enable tilt';
  hint.style.cssText = 'position:fixed;right:12px;bottom:12px;font-size:12px;' +
    'color:#777;background:rgba(255,255,255,.7);padding:6px 10px;border-radius:999px;' +
    'border:1px solid rgba(0,0,0,.08);';
  gate.appendChild(hint);

  document.body.appendChild(gate);

  function cleanupGate() {
    try { gate.remove(); } catch (_) {}
  }

  async function requestOnce(ev) {
    // 最初のタップでリンク遷移してしまうのを防ぐ（許可ダイアログを出すため）
    if (ev) {
      ev.preventDefault();
      ev.stopPropagation();
    }

    try {
      const res = await DeviceOrientationEvent.requestPermission();
      if (res === 'granted') {
        start();
      }
    } catch (err) {
      console.log(err);
    } finally {
      cleanupGate();
    }
  }

  // iOS は touchend / click のほうが安定
  gate.addEventListener('touchend', requestOnce, { once: true });
  gate.addEventListener('click', requestOnce, { once: true });
})();
</script>