#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

cd "$(dirname "$0")"

python manage.py migrate --noinput
gunicorn django_project.wsgi:application

