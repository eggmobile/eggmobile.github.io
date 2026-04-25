---
layout: page
title: "スニーカー星人"
permalink: /sneakers/
credit:
  title: Sneaker Aliens
  year: 2024–
  medium: Acrylic paintings, Digital illustrations
  tools: Acrylic paint, Illustrator, Photoshop
  statement: "A series of fictional beings modeled after sneakers, depicted as alien life forms inhabiting the same planet.  <br>
While playful and humorous on the surface, the work reflects the absurdity and violence inherent in human conflict.<br>
<br>
Different species — such as sneaker-based and sandal-based creatures — coexist in a fragile state of tension, mirroring tribal divisions and irrational hostilities found in society.  <br>
Their exaggerated designs and cartoon-like appearance contrast with the brutality of their imagined world, creating a dissonance between innocence and aggression.<br>
<br>
The series began as a daily drawing practice and has expanded into paintings, printed matter, and character-based works.  <br>
Through repetition and accumulation, it explores how familiar objects can become carriers of narrative, identity, and collective behavior."
---

{% comment %}
  Place your 256px PNGs here:
  assets/images/sneaker-aliens/

  Expected file name format (lexicographically sortable):
  sneaker_monster_YYYY-MM-DD-HHmm.png
  or sneaker_monster_YYYY-MM-DD-HHmm_2.png etc.
{% endcomment %}

{% assign files = site.static_files | where_exp: "f", "f.path contains '/assets/images/sneaker-aliens/'" %}
{% assign pngs = files | here_exp: "f", "f.path contains '/assets/images/sneaker-aliens/'" %}

Sneaker Aliens of スニーカー星人

{% if pngs and pngs.size > 0 %}
  {% assign sorted = pngs | sort: "path" | reverse %}
  <ul class="archive-grid sneakers">
    {% for f in sorted %}
      <li class="archive-item">
        <img class="archive-img" src="{{ f.path | relative_url }}" alt="Sneaker Alien">
      </li>
    {% endfor %}
  </ul>
{% else %}
  <p>Coming soon.</p>
{% endif %}

{% include credit.html %}