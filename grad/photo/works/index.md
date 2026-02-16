---
layout: page
title: "写真展：作品"
permalink: /grad/photo/works/
---

{% assign imgs = site.static_files | where_exp: "f", "f.path contains '/assets/images/grad/photo/works/'" %}

{% if imgs and imgs.size > 0 %}
  {% assign sorted = imgs | sort: "path" %}

  <div class="photo-wall">
    {% for f in sorted %}
      <img class="photo-wall__img" src="{{ f.path | relative_url }}" alt="">
    {% endfor %}
  </div>
{% else %}
  <p>画像がまだありません。</p>
{% endif %}