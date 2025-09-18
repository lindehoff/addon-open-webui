# Open WebUI Addon for Home Assistant

This add-on provides [Open WebUI](https://openwebui.com) for Home Assistant, an extensible, self-hosted interface for AI that adapts to your workflow, all while operating entirely offline.

## Configuration

### Option: `port`

The port that Open WebUI will use. Default is `8080`.
If you have another service using port 8080, you can change this to any available port.

Notes:
- The add-on maps this option to upstream environment variables expected by Open WebUI (`PORT`, `WEBUI_PORT`, `OPEN_WEBUI_PORT`).
- If you explicitly set any of these variables in `env_vars`, your explicit value will take precedence over the `port` option.

Example configuration:
```yaml
port: 8098
env_vars:
  - name: OLLAMA_BASE_URL
    value: http://192.168.1.100:11434
```

### Option: `env_vars`

This option allows you to pass environment variables to Open WebUI. This is useful for configuring various aspects of Open WebUI.

Example:
```yaml
env_vars:
  - name: OPENAI_API_KEY
    value: sk-xxx
  - name: OLLAMA_BASE_URL
    value: http://192.168.1.100:11434
  - name: RAG_EMBEDDING_MODEL
    value: all-MiniLM-L6-v2
```

For a complete list of available environment variables, please refer to the [Open WebUI Environment Configuration documentation](https://docs.openwebui.com/getting-started/env-configuration/#overview).

## How to use

1. Install the add-on
2. Configure the port if needed
3. Add any required environment variables
4. Start the add-on
5. Click "OPEN WEB UI" in the add-on page to access the interface
6. Follow the Open WebUI setup wizard to configure your AI models and settings

For more information about Open WebUI, please visit [the official documentation](https://docs.openwebui.com/).
