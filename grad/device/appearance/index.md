---
layout: page
title: "デバイス：外観"
permalink: /grad/device/appearance/
---

{% assign imgs = site.static_files | where_exp: "f", "f.path contains '/assets/images/grad/device/appearance/'" %}

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