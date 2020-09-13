#!/bin/sh
# start-up-django.sh

set -e
  
host="$1"
shift
  
until python db_check.py; do
  >&2 echo "waiting for postgres..."
  sleep 1
done
  
>&2 echo "Postgres is up - running django migrate and runserver"

python manage.py migrate && 
DJANGO_SUPERUSER_PASSWORD=password python manage.py createsuperuser --noinput --username=admin --email=admin@example.org && 
python manage.py runserver 0.0.0.0:8000
