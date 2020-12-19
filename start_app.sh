#!/bin/bash

echo "DB Migration ..(1/3)"
python manage.py makemigrations
python manage.py migrate

echo "Collect static files ..(2/3)"
python manage.py collectstatic --noinput

echo "Gunicorn start ..(3/3)"
gunicorn dockertest.wsgi:application --bind 0.0.0.0:8000