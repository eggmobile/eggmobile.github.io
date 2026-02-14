---
layout: page
title: "うっクリマン"
permalink: /ukkuriman/
---

<ul class="post-list">
  {% for post in site.tags.ukkuriman %}
    <li>
      {% if post.thumbnail %}
        <a class="thumb-link" href="{{ post.url | relative_url }}">
          <img src="{{ post.thumbnail | relative_url }}" alt="{{ post.title }}">
        </a>
        <br>
      {% endif %}

      <a class="post-link" href="{{ post.url | relative_url }}">{{ post.title }}</a><br>
      <small>{{ post.date | date: "%Y-%m-%d" }}</small>
    </li>
  {% endfor %}
</ul>