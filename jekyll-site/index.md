---
layout: default
title: Home
---

<div class="home">
  <div class="home-hero">
    <div class="home-photo-wrap">
      <img src="{{ '/assets/img/photo.jpg' | relative_url }}" alt="Ankit Mallya" class="home-photo" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
      <div class="home-photo-placeholder" aria-hidden="true"><span>AM</span></div>
    </div>
    <h1 class="home-name">{{ site.title }}</h1>
    <p class="home-tagline">Tech Product Manager</p>
    <p class="home-sub">Engineering → Product · Building products that ship</p>
  </div>

  <section class="section">
    <h2>Who I am</h2>
    <p>
      I'm an engineer moving into tech product management — focused on <strong>problem discovery</strong>, <strong>strategy</strong>, and <strong>execution</strong>, not just delivery.
      I bring a strong foundation in cloud and data platforms (AWS, Snowflake, dbt) and product thinking: customer impact, prioritization, and roadmap clarity.
    </p>
    <p>
      I care about scalable systems, measurable outcomes, and building alignment across engineering, business, and stakeholders.
    </p>
  </section>

  <section class="section">
    <h2>Quick links</h2>
    <p>
      <a href="{{ '/experience' | relative_url }}">Work experience</a> ·
      <a href="{{ '/blog' | relative_url }}">Blog</a> ·
      <a href="{{ '/cv' | relative_url }}">CV</a> ·
      <a href="https://linkedin.com/in/ankitmallya" target="_blank" rel="noopener">LinkedIn</a> ·
      <a href="mailto:ankit.mallya@gmail.com">Email</a>
    </p>
  </section>
</div>
