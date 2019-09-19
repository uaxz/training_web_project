sudo pip3 install --upgrade django
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
sudo gunicorn -c /home/box/web/etc/gunicorn-django.conf ask.wsgi:application
sudo /etc/init.d/nginx restart
#mkdir uploads etc public public/img public/css public/js