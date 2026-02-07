#!/usr/bin/env bash
# Creates today's log entry (if missing) and updates streak stats.
# Run from repo root. Uses UTC for dates (GitHub Actions runner).

set -e

ENTRIES_DIR="daily-log/entries"
STREAK_FILE="daily-log/STREAK.md"
TODAY=$(date -u +%Y-%m-%d)
ENTRY_FILE="${ENTRIES_DIR}/${TODAY}.md"

# --- Create today's entry if missing ---
if [[ ! -f "$ENTRY_FILE" ]]; then
  cat > "$ENTRY_FILE" << EOF
# ${TODAY}

## Shipped
- 

## Learned
- 

## Note
- 

EOF
  echo "Created $ENTRY_FILE"
else
  echo "Entry already exists: $ENTRY_FILE"
fi

# --- Collect all dates from entry filenames (exclude TEMPLATE, .gitkeep) ---
dates=""
for f in "${ENTRIES_DIR}"/*.md; do
  [[ -f "$f" ]] || continue
  name=$(basename "$f" .md)
  [[ "$name" == "TEMPLATE" ]] && continue
  if [[ "$name" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
    dates+="$name"$'\n'
  fi
done
dates=$(echo "$dates" | sort -u)

total=$(echo "$dates" | grep -c . || true)
[[ -z "$total" ]] && total=0

# --- Compute current streak (consecutive days ending at latest date) ---
# Uses Python for portable date math (works on both Linux and macOS).
latest=$(echo "$dates" | tail -1)
streak=0
if [[ -n "$latest" ]]; then
  current="$latest"
  while true; do
    if echo "$dates" | grep -q "^${current}$"; then
      streak=$((streak + 1))
      current=$(python3 -c "from datetime import datetime, timedelta; d=datetime.strptime('${current}', '%Y-%m-%d'); print((d - timedelta(days=1)).strftime('%Y-%m-%d'))" 2>/dev/null || break)
    else
      break
    fi
  done
fi

# --- Write STREAK.md ---
cat > "$STREAK_FILE" << EOF
# Streak

| | |
| :--- | :--- |
| **Current streak** | ${streak} day(s) |
| **Total days** | ${total} |
| **Last updated** | $(date -u +%Y-%m-%dT%H:%M:%SZ 2>/dev/null || date -u +%Y-%m-%d) |

## Logged dates

\`\`\`
$(echo "$dates" | sed '/^$/d')
\`\`\`

*Updated by [daily-log workflow](.github/workflows/daily-log.yml).*
EOF

echo "Streak: $streak | Total: $total"
