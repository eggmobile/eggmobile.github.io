---
layout: page
title: "小説"
permalink: /grad/novel/
nav_exclude: true
credit:
  title: Notice of Leave Without a Name
  year: 2025
  medium: Artist's book (A6, 130 pages)
  statement: A typographic narrative novel about a mysterious anonymous leave request and workplace reality.
---

<p>
  小説では、文章にグラフィック表現を加えることで、<br>
  擬似的なうつ病の体験を提示しました。
</p>
<img class="top-img" src="/assets/images/grad/novel/grad_novel_top.jpg" alt="個人との距離">
<br>
<img class="top-img" src="/assets/images/grad/novel/grad_novel_01.jpg" alt="うつ病をテーマにした小説とその組版設計">

<p>
  うつ病を抱えた個人の内的な体験や思考の揺らぎを描くために「名前のない休職届」という小説を制作しました。
</p>
<p>
  症状によって変化する認知や感覚、言葉にしづらい重さや違和感を、文章とグラフィック表現を重ねることで表現しています。読者が主人公の視点を通してその内面に触れることで、うつ病を「外から理解する」のではなく、「内側から感じる」体験を目指しました。
</p>
<p>
  本作は、うつ病と個人との距離を可視化する試みです。
</p>
<br>
{% include credit.html %}
<br>
<hr>
<br>
<p>卒展での様子</p>
{% assign posts = site.tags.grad_novel %}
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