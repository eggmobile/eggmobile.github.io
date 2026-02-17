---
layout: page
title: "Tシャツ"
permalink: /apparel/
---

{% assign pages_in_dir = site.pages | where_exp: "p", "p.path contains 'apparel/'" %}
{% assign pages_filtered = pages_in_dir | where_exp: "p", "p.name != 'index.md'" %}
{% assign posts = pages_filtered %}

{% if posts %}
<ul class="archive-grid">
  {% assign posts_sorted = posts | sort: "date" | reverse %}
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