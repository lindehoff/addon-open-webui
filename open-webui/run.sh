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
# If the user explicitly set PORT via env_vars, honor that; otherwise, force PORT to match the add-on 'port'.
user_defined_port_env="$({ < "$INPUT_FILE" jq -r '.env_vars[]? | select(.name == "PORT") | .value' || true; } | head -n 1)"
if [ -n "${port:-}" ]; then
    if [ -z "$user_defined_port_env" ]; then
        export PORT="$port"
    fi
    export WEBUI_PORT="${WEBUI_PORT:-$port}"
    export OPEN_WEBUI_PORT="${OPEN_WEBUI_PORT:-$port}"
    echo "Using port: ${PORT} (WEBUI_PORT=${WEBUI_PORT}, OPEN_WEBUI_PORT=${OPEN_WEBUI_PORT})"
fi

cd /app/backend
exec ./start.sh