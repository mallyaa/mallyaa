---
layout: default
title: Home
---

<div class="home">
  <div class="home-hero">
    <div class="home-hero-inner">
      <div class="home-photo-wrap">
        <img src="{{ '/assets/img/photo.jpg' | relative_url }}" alt="Ankit Mallya" class="home-photo" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
        <div class="home-photo-placeholder" aria-hidden="true"><span>AM</span></div>
      </div>
      <div class="home-hero-text">
        <p class="home-greeting-line">hello my name is Ankit Mallya<span class="cursor-blink" aria-hidden="true">/</span></p>
        <p class="summary-line">Engineering → Product | AWS · Snowflake · dbt | Platform + Data Systems</p>
        <p>
          I'm a software engineer, investor and traveller based in Bangalore, India. I build and ship data pipelines and platform tooling that teams rely on — with a focus on clarity, reliability, and impact.
        </p>
        <p>
          Currently building DataXchange at <a href="https://betanxt.com/" target="_blank" rel="noopener" class="link-highlight">BetaNXT</a>, a fintech company powering wealth management. We're making data flow for advisors and asset managers faster and more reliable.
        </p>
      </div>
    </div>
  </div>

  <script>
    (function() {
      var c = document.querySelector('.cursor-blink');
      if (c) setInterval(function() { c.style.opacity = c.style.opacity === '0' ? '1' : '0'; }, 530);
    })();
  </script>

  <section class="section animate-on-scroll">
    <h2>Now</h2>

    <div class="dashboard-grid">
      <div class="dash-card dash-primary">
        <p class="dash-label">Building</p>
        <h3 class="dash-title">DataXchange Platform</h3>
        <p class="dash-sub">
          Reliable data movement and transformation for wealth management workflows.
        </p>
        <div class="dash-tags">
          <span class="tag tag-industry">FinTech</span>
          <span class="tag">Platform</span>
          <span class="tag tag-live">Shipping</span>
        </div>
      </div>

      <div class="dash-card">
        <p class="dash-label">Core Stack</p>
        <h3 class="dash-title">Cloud + Data Platform</h3>
        <p class="dash-sub">Building pipelines, integrations, and scalable infrastructure.</p>

        <div class="stack-icons">
          <span class="stack-item" title="AWS">
            <img src="{{ '/assets/icons/aws.svg' | relative_url }}" alt="AWS" />
            <span>AWS</span>
          </span>
          <span class="stack-item" title="Snowflake">
            <img src="{{ '/assets/icons/snowflake.svg' | relative_url }}" alt="Snowflake" />
            <span>Snowflake</span>
          </span>
          <span class="stack-item" title="dbt">
            <img src="{{ '/assets/icons/dbt.svg' | relative_url }}" alt="dbt" />
            <span>dbt</span>
          </span>
          <span class="stack-item" title="Terraform">
            <img src="{{ '/assets/icons/terraform.svg' | relative_url }}" alt="Terraform" />
            <span>Terraform</span>
          </span>
          <span class="stack-item" title="Confluent">
            <img src="{{ '/assets/icons/confluent.svg' | relative_url }}" alt="Confluent" />
            <span>Confluent</span>
          </span>
          <span class="stack-item" title="Git">
            <img src="{{ '/assets/icons/git.svg' | relative_url }}" alt="Git" />
            <span>Git</span>
          </span>
          <span class="stack-item" title="Python">
            <img src="{{ '/assets/icons/python.svg' | relative_url }}" alt="Python" />
            <span>Python</span>
          </span>
          <span class="stack-item" title="SQL">
            <img src="{{ '/assets/icons/sql.svg' | relative_url }}" alt="SQL" />
            <span>SQL</span>
          </span>
        </div>

        <div class="dash-tags">
          <span class="tag">Cloud</span>
          <span class="tag">Data Engineering</span>
          <span class="tag">Automation</span>
        </div>
      </div>

      <div class="dash-card">
        <p class="dash-label">Focus</p>
        <h3 class="dash-title">Reliability · Observability · Scale</h3>
        <p class="dash-sub">Improving platform trust through metrics, monitoring, and quality.</p>

        <div class="dash-tags">
          <span class="tag">SLA/SLO</span>
          <span class="tag">Data Quality</span>
          <span class="tag">Monitoring</span>
        </div>
      </div>

      <div class="dash-card">
        <p class="dash-label">Exploring</p>
        <h3 class="dash-title">Agents · LLM + RAG · Semantic Search</h3>
        <p class="dash-sub">Making enterprise data discoverable, usable, and decision-ready.</p>

        <div class="dash-tags">
          <span class="tag">AI Enablement</span>
          <span class="tag">Knowledge Retrieval</span>
          <span class="tag">Enterprise Search</span>
        </div>
      </div>
    </div>
  </section>

  <section class="section animate-on-scroll">
    <h2>Focus areas</h2>

    <div class="focus-grid">
      <div class="focus-card">
        <h3>Platform & data engineering</h3>
        <ul>
          <li>Data ingestion, transformation, and pipeline reliability</li>
          <li>Cloud-native architecture and scalable platform design</li>
          <li>Streaming, governance, schema design, and performance tuning</li>
        </ul>
        <div class="dash-tags">
          <span class="tag">Data Platforms</span>
          <span class="tag">Cloud</span>
          <span class="tag">Streaming</span>
        </div>
      </div>

      <div class="focus-card">
        <h3>Product strategy</h3>
        <ul>
          <li>Problem discovery, user pain points, and impact mapping</li>
          <li>Roadmaps, prioritization frameworks, and stakeholder alignment</li>
          <li>Outcome-driven delivery tied to OKRs and success metrics</li>
        </ul>
        <div class="dash-tags">
          <span class="tag">PRDs</span>
          <span class="tag">Roadmaps</span>
          <span class="tag">OKRs</span>
        </div>
      </div>

      <div class="focus-card">
        <h3>Execution & leadership</h3>
        <ul>
          <li>End-to-end ownership across engineering and business teams</li>
          <li>Clear specs, technical alignment docs, and stakeholder communication</li>
          <li>Shipping consistently without compromising quality</li>
        </ul>
        <div class="dash-tags">
          <span class="tag">Execution</span>
          <span class="tag">Stakeholders</span>
          <span class="tag">Delivery</span>
        </div>
      </div>
    </div>
  </section>

  <section class="section animate-on-scroll">
    <h2>Quick links</h2>
    <div class="quick-links">
      <a href="{{ '/experience' | relative_url }}" class="pill">Work experience</a>
      <a href="{{ '/blog' | relative_url }}" class="pill">Blog</a>
      <a href="{{ '/cv' | relative_url }}" class="pill">CV</a>
      <a href="https://linkedin.com/in/ankitmallya" class="pill" target="_blank" rel="noopener">LinkedIn</a>
      <a href="mailto:ankit.mallya@gmail.com" class="pill">Email</a>
    </div>
  </section>
</div>
