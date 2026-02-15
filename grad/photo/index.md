---
layout: page
title: "写真展"
permalink: /grad/photo/
nav_exclude: true
---
<p>
  写真展では、ぼかし表現を用いて<br>
  うつ病が社会の中でどのように<br>
  “見えなくされてきたか”を提示しました。<br>
</p>
<img class="top-img" src="/assets/images/grad/photo/grad_photo_top.jpg" alt="社会との距離">
<br>
<img class="top-img" src="/assets/images/grad/photo/grad_photo_01.jpg" alt="展示会の様子">
<br>
<img class="top-img" src="/assets/images/grad/photo/grad_photo_02.jpg" alt="展示会の様子">
<br>
<img class="top-img" src="/assets/images/grad/photo/grad_photo_app.jpg" alt="モバイルアプリ">
<p>
  2024年12月6日・7日に千葉県で「うつ病をもっと身近に」というタイトルの写真展を開催しました。
</p>
<p>
  被写体をあえてぼかすことで、うつ病が社会の中で見えにくく、誤解されやすい現状を表現しています。「うつっぽい」シールを貼ることで、うつの見えにくさを体験できる展示としました。
</p>
<p>
  本展示は、社会とうつ病のあいだに存在する見えない距離を可視化する試みです。
</p>
<hr>
<br>
<p>卒展での様子</p>
{% assign posts = site.tags.grad_photo %}
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