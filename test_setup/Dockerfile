FROM python:3.15.0-slim

COPY . /app
WORKDIR /app

RUN python3 -m venv /opt/env
RUN /opt/env/bin/pip install --upgrade pip && \
    /opt/env/bin/pip install -r requirements.txt && \
    chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
