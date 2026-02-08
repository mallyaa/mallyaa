# Jekyll site — deploy to GitHub Pages

The live site is built **only from the `jekyll-site/` subfolder**. The root **README.md** is for your GitHub profile/repo and is **never** used for the GitHub Pages site.

## Deploy to mallyaa.github.io/mallyaa/

1. **Settings → Pages** → Source: **GitHub Actions** (not "Deploy from branch"). This uses the workflow in `.github/workflows/deploy-pages.yml`, which builds from `jekyll-site/` only.
2. On push to **main**, the workflow builds the Jekyll site inside `jekyll-site/` and deploys it. Root files (README, daily-log, etc.) are ignored.
3. Add your photo at `jekyll-site/assets/img/photo.jpg`. Optional: add `jekyll-site/assets/cv.pdf` for the CV Download button.

## Blog posts

Add files in `jekyll-site/_posts/` named `YYYY-MM-DD-title.md` with front matter:

```yaml
---
layout: post
title: "Your title"
date: 2025-02-08
---
```

## Build locally

```bash
cd jekyll-site
bundle install
bundle exec jekyll serve --baseurl ''
```

Open http://localhost:4000
