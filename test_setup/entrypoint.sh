#!/bin/bash

APP_PORT=${PORT:-8000}
cd /app/
echo "Starting application on port $APP_PORT..."
/opt/env/bin/gunicorn --worker-tmp-dir /dev/shm \
    test_setup.wsgi:application --bind "0.0.0.0:$APP_PORT"