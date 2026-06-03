---
layout: page
title: "アプリ開発"
permalink: /apps/
---

{% assign pages = site.pages | where: "archive", true %}
{% if pages.size > 0 %}
<ul class="archive-grid">
  {% assign pages_sorted = pages | sort: "date" | reverse %}
  {% for page in pages_sorted %}
    <li class="archive-item">
      {% if page.thumbnail %}
        <a class="archive-thumb" href="{{ page.url | relative_url }}">
          <img class="archive-img" src="{{ page.thumbnail | relative_url }}" alt="{{ page.title | escape }}">
        </a>
      {% endif %}
      <a class="archive-title" href="{{ page.url | relative_url }}">{{ page.title }}</a>
      <small class="archive-date">{{ page.date | date: "%Y-%m-%d" }}</small>
    </li>
  {% endfor %}
</ul>
{% else %}
<p>Coming soon.</p>
{% endif %}