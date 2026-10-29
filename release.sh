#!/bin/sh
# Bump VERSION by 0.00001, snapshot the app into v/<version>/, keep the newest 10 snapshots.
set -e
cd "$(dirname "$0")"
old=$(sed -n "s/^const VERSION = '\([0-9.]*\)'.*/\1/p" index.html)
new=$(awk -v v="$old" 'BEGIN { printf "%.5f", v + 0.00001 }')
[ "${1:-}" = "--keep" ] && new=$old
sed -i "s/^const VERSION = '$old'/const VERSION = '$new'/" index.html
mkdir -p "v/$new" && cp index.html demo.js "v/$new/"
ls v | grep -E '^[0-9.]+$' | sort -t. -k2 -n | head -n -10 | while read d; do rm -rf "v/$d"; done
ls v | grep -E '^[0-9.]+$' | sort -t. -k2 -rn | sed 's/.*/"&"/' | paste -sd, | sed 's/.*/[&]/' > v/versions.json
echo "v$new"
