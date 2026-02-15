---
layout: page
title: "デバイス"
permalink: /grad/device/
nav_exclude: true
---
<p>
  デバイスでは、あなたの言葉を<br>
  温もりとともに伝えること<br>
  という体験を提示しました。
</p>
<img class="top-img" src="/assets/images/grad/device/grad_device_top.jpg" alt="他人との距離">
<br>
<img class="top-img" src="/assets/images/grad/device/grad_device_01.jpg" alt="Raspberry Piとレゴを使ったデバイス">
<br>
<img class="top-img" src="/assets/images/grad/device/grad_device_02.jpg" alt="デバイスの使い方">
<p>
  うつ病の人と他者とのあいだに生じる「伝わらなさ」や距離感を提示するために、体験型のデバイスを制作しました。
</p>
<p>
  音声を入力すると文字が印字されますが、距離が離れていると文字はぼやけ、手で触れ温めることで徐々にはっきりと表示されます。これは、コミュニケーションには、寄り添う姿勢や関係性が大きく影響することを示しています。
</p>
<p>
  本デバイスは、うつ病と他者との距離を身体的な感覚を通して可視化する試みです。
</p>
<hr>
<br>
<p>卒展での様子</p>
{% assign posts = site.tags.grad_device %}
{% if posts %}
  {% assign posts_sorted = posts | sort: "date" | reverse %}
  <ul class="archive-grid">
    {% for post in posts_sorted %}
      <li class="archive-item">
        {% if post.thumbnail %}
          <a class="archive-thumb" href="{{ post.url | relative_url }}">
            <img class="archive-img" src="{{ post.thumbnail | relative_url }}" alt="{{ post.title | escape }}">
          </a>
        {% endif %}
        <a class="archive-title" href="{{ post.url | relative_url }}">{{ post.title }}</a>
        <small class="archive-date">{{ post.date | date: "%Y-%m-%d" }}</small>
      </li>
    {% endfor %}
  </ul>
{% else %}
  <p>Coming soon.</p>
{% endif %}