FROM python:3.13.0-slim

COPY . /app
WORKDIR /app

# Install PostgreSQL client for pg_isready
RUN apt-get update && \
    apt-get install -y postgresql-client && \
    rm -rf /var/lib/apt/lists/*

RUN python3 -m venv /opt/env
RUN /opt/env/bin/pip install --upgrade pip && \
    /opt/env/bin/pip install -r requirements.txt && \
    chmod +x /app/entrypoint.sh && \
    chmod +x /app/migrate.sh 