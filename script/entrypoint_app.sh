#!/bin/bash

### 2초 쉬어주면 DB가 대부분 준비 상태가 된다.
#sleep 2
#
### 그래도 안되는 경우 계속 재시도
#python manage.py makemigrations
#until python manage.py migrate; do
#    sleep 2
#    echo "Retry..."
#done

python manage.py collectstatic --noinput
gunicorn dockertest.wsgi:application --bind 0.0.0.0:8000