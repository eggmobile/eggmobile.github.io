---
layout: page
title: "うっクリマン"
permalink: /ukkuriman/
---

<ul class="archive-grid">
  {% assign posts = site.tags.ukkuriman | sort: "date" | reverse %}
  {% for post in posts %}
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