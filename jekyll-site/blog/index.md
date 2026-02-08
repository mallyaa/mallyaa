---
layout: default
title: Blog
---

# Blog

Short posts on product, data, and building in public.

<ul class="blog-list">
  {% for post in site.posts %}
  <li>
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%b %d, %Y" }}</time>
  </li>
  {% endfor %}
</ul>

{% if site.posts.size == 0 %}
<p class="muted">No posts yet. Add markdown files in <code>_posts/</code> with a date and title in the filename (e.g. <code>2025-02-08-my-first-post.md</code>).</p>
{% endif %}
