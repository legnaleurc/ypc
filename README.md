# Required Environment Variable

* `API_TOKEN`: Telegram Bot API token
* `DATABASE_URL`: e.g. `sqlite:////tmp/database.sqlite`

# Development

```sh
make          # create .venv with uv
make format   # format with ruff
make lint     # lint with ruff
make test
```

# Podman Compose

```sh
# prepare environment
cp .env.example .env
podman compose build
podman compose up
```
