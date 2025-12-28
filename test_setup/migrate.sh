#!/bin/bash

SUPERUSER_EMAIL=${SUPERUSER_MAIL:-"test@gmail.com"}

cd /app

/opt/bin/python manage.py migrate --no-input
/opt/bin/python manage.py createsuperuser --no-input --email $SUPERUSER_EMAIL || true