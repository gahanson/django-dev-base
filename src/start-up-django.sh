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
python manage.py runserver 0.0.0.0:8000
