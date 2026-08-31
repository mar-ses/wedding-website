#!/usr/bin/env bash

set -euo pipefail

# Serve the website from this script's directory so it works from any current directory.
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"

port="${1:-8000}"

echo "Serving the wedding website at http://localhost:${port}"
echo "Press Ctrl+C to stop."
python3 -m http.server "$port"
