#!/usr/bin/env bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR"

echo "==============================================="
echo " Starting Attendance Web Server                "
echo "==============================================="

python3 database.py
PORT="${PORT:-5002}"
echo "Running on http://127.0.0.1:$PORT (or http://localhost:$PORT)"
python3 app.py --port "$PORT"
