#!/bin/bash

echo DB Migration ..
python manage.py makemigrations
python manage.py migrate

echo Collect static files ..
python manage.py collectstatic --noinput

echo Gunicorn start ..
gunicorn dockertest.wsgi:application --bind 0.0.0.0:8000