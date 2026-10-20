FROM python:3.12-slim-trixie AS builder

# install uv
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /usr/local/bin/

WORKDIR /app
COPY pyproject.toml uv.lock /app/
RUN uv sync --frozen --no-dev --no-install-project

FROM python:3.12-slim-trixie AS production

WORKDIR /app
COPY --from=builder /app/.venv /app/.venv
COPY . /app
