---
layout: page
title: "写真展"
permalink: /grad/photo/
nav_exclude: true
---

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