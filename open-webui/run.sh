#!/bin/bash
set -eo pipefail  # Fail on errors and pipeline errors

INPUT_FILE="/data/options.json"

# Single pass processing combining both env sources
while IFS= read -r line; do
    [[ -z "$line" ]] && continue  # Skip empty lines
    key="${line%%=*}"
    value="${line#*=}"
    
    echo "Setting environment variable: $key=${value@Q}"
    export "$key"="$value"
done < <(
    < "$INPUT_FILE" jq -r \
    '(
        to_entries[] | 
        select(.key != "env_vars") | 
        "\(.key)=\(.value | tostring)"
    ),
    (
        .env_vars[]? | 
        "\(.name)=\(.value | tostring)"
    )'
)

# Normalize port environment variable for upstream Open WebUI
# Many upstream scripts expect PORT/WEBUI_PORT/OPEN_WEBUI_PORT rather than lowercase 'port'
if [ -n "${port:-}" ]; then
    # Do not override if already provided via env_vars
    if [ -z "${PORT:-}" ]; then export PORT="$port"; fi
    if [ -z "${WEBUI_PORT:-}" ]; then export WEBUI_PORT="$port"; fi
    if [ -z "${OPEN_WEBUI_PORT:-}" ]; then export OPEN_WEBUI_PORT="$port"; fi
    echo "Using port: ${PORT:-${WEBUI_PORT:-${OPEN_WEBUI_PORT:-$port}}}"
fi

cd /app/backend
exec ./start.sh