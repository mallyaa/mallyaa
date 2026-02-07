# Daily Ship

A **showcase project**: a small “building in public” site that grows with **one automated commit per day**. The workflow creates that day’s log entry, updates streak stats, and rebuilds the public timeline so the site always reflects your latest entries.

## What you can show

- **Live site** — Enable GitHub Pages (source: **main**, folder: **docs**) and the timeline lives at  
  `https://<username>.github.io/<repo>/`  
  (e.g. `https://ankitmallya.github.io/ankitmallya/`).
- **Repo** — Commit history shows steady, incremental progress (one commit per day).
- **Content** — Edit any day’s file in `entries/` (Shipped / Learned / Note); the site and streak update on the next run.

## How it works

1. A [GitHub Action](../.github/workflows/daily-log.yml) runs once per day (05:00 UTC) or on demand via **Run workflow**.
2. It creates **today’s entry** in `entries/` if missing (e.g. `entries/2025-02-09.md`).
3. It recomputes **streak** and **total days** and updates [STREAK.md](STREAK.md).
4. It runs [build-site-data.py](scripts/build-site-data.py) to generate `docs/data/updates.json` from all entries.
5. It commits and pushes changes to `daily-log/` and `docs/`, so the showcase site and data stay in sync.

You edit the markdown entries whenever you like; the bot only ensures the day exists and the site data is up to date.

## Layout

| Path | Purpose |
|------|--------|
| `entries/` | One `YYYY-MM-DD.md` per day (Shipped / Learned / Note). |
| `STREAK.md` | Auto-updated streak and total days. |
| `scripts/update-daily.sh` | Creates today’s entry and writes STREAK.md. |
| `scripts/build-site-data.py` | Builds `docs/data/updates.json` for the site. |
| `../docs/` | Static showcase site (HTML/CSS/JS) that reads `data/updates.json`. |

## Enable the live site

1. Repo **Settings** → **Pages**.
2. Source: **Deploy from a branch**.
3. Branch: **main**, folder: **/docs**.
4. Save. The timeline will be at your repo’s GitHub Pages URL.
