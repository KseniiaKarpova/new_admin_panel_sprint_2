set -e

chown www-data:www-data /var/log

python3 manage.py collectstatic --no-input --clear
python3 manage.py migrate --no-input

uwsgi --strict --ini /app/uwsgi.ini
