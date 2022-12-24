#!/bin/sh

while ! nc -z db 06 ; do
    echo "Waiting for the MySQL Server"
    sleep 3
done

python manage.py runserver 0.0.0.0:80
