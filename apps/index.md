---
layout: page
title: "アプリ開発"
permalink: /apps/
---

{% assign pages = site.pages | where_exp: "item", "item.tags contains 'apps'" %}

{% if pages %}
<ul class="archive-grid">
  {% assign pages_sorted = pages | sort: "date" | reverse %}
  {% for page in pages_sorted %}
    <li class="archive-item">
      {% if page.thumbnail %}
        <a class="archive-thumb" href="{{ page.link }}">
          <img class="archive-img" src="{{ page.thumbnail | relative_url }}" alt="{{ page.title | escape }}">
        </a>
      {% endif %}
      <a class="archive-title" href="{{ page.link }}">{{ page.title }}</a>
      <small class="archive-date">{{ page.date | date: "%Y-%m-%d" }}</small>
    </li>
  {% endfor %}
</ul>
{% else %}
<p>Coming soon.</p>
{% endif %}