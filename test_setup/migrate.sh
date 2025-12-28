#!/bin/bash

DJANGO_SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"test@gmail.com"}

cd /app

echo "Running migrations.."
until pg_isready -p "5432" -h "postgres_db" -d "postgres" -U "root"; do
  echo "Waiting for Postgres"
  sleep 1
done
/opt/env/bin/python manage.py migrate --no-input
/opt/env/bin/python manage.py createsuperuser --no-input --username $DJANGO_SUPERUSER_EMAIL || true