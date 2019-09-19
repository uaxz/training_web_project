sudo pip3 install --upgrade django
sudo pip3 install --upgrade gunicorn
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
sudo gunicorn -c /home/box/web/etc/gunicorn.conf --bind=0.0.0.0:8080 hello:application
sudo /etc/init.d/nginx restart
#mkdir uploads etc public public/img public/css public/js