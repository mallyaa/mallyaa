#!/usr/bin/env python3
"""
Build docs/data/updates.json from daily-log entries for the showcase site.
Run from repo root. Output: { "streak", "total", "updates": [ { "date", "shipped", "learned", "note" } ] }
"""
import json
import re
from pathlib import Path
from datetime import datetime, timedelta

ENTRIES_DIR = Path("daily-log/entries")
OUTPUT_PATH = Path("docs/data/updates.json")

def parse_entry(path: Path) -> dict | None:
    if not path.suffix == ".md" or path.stem == "TEMPLATE":
        return None
    if not re.match(r"^\d{4}-\d{2}-\d{2}$", path.stem):
        return None
    text = path.read_text(encoding="utf-8")
    shipped = _section(text, "Shipped")
    learned = _section(text, "Learned")
    note = _section(text, "Note")
    return {"date": path.stem, "shipped": shipped, "learned": learned, "note": note}

def _section(text: str, name: str) -> str:
    m = re.search(rf"##\s*{re.escape(name)}\s*\n(.*?)(?=\n##\s|\Z)", text, re.DOTALL)
    if not m:
        return ""
    return m.group(1).strip()

def main():
    updates = []
    for f in sorted(ENTRIES_DIR.glob("*.md")):
        entry = parse_entry(f)
        if entry:
            updates.append(entry)

    dates = [u["date"] for u in updates]
    total = len(dates)
    streak = 0
    if dates:
        latest = dates[-1]
        current = latest
        while True:
            if current in dates:
                streak += 1
                d = datetime.strptime(current, "%Y-%m-%d") - timedelta(days=1)
                current = d.strftime("%Y-%m-%d")
            else:
                break

    OUTPUT_PATH.parent.mkdir(parents=True, exist_ok=True)
    payload = {"streak": streak, "total": total, "updates": updates}
    OUTPUT_PATH.write_text(json.dumps(payload, indent=2), encoding="utf-8")
    print(f"Wrote {OUTPUT_PATH} ({total} updates, streak {streak})")

if __name__ == "__main__":
    main()
