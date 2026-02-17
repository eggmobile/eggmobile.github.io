---
layout: page
title: "スニーカー星人"
permalink: /sneakers/
---

{% comment %}
  Place your 256px PNGs here:
  assets/images/sneaker_monsters/

  Expected file name format (lexicographically sortable):
  sneaker_monster_YYYY-MM-DD-HHmm.png
  or sneaker_monster_YYYY-MM-DD-HHmm_2.png etc.
{% endcomment %}

{% assign files = site.static_files | where_exp: "f", "f.path contains '/assets/images/sneaker_monsters/'" %}
{% assign pngs = files | where_exp: "f", "f.extname == '.png'" %}

Sneaker monsters of スニーカー星人

{% if pngs and pngs.size > 0 %}
  {% assign sorted = pngs | sort: "path" | reverse %}
  <ul class="archive-grid sneakers">
    {% for f in sorted %}
      <li class="archive-item">
        <img class="archive-img" src="{{ f.path | relative_url }}" alt="sneaker monster">
      </li>
    {% endfor %}
  </ul>
{% else %}
  <p>Coming soon.</p>
{% endif %}