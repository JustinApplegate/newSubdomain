#!/bin/bash
# Running this script will automate creating a new subdomain

SUBDOMAIN=$1".justinapplegate.me"

echo $SUBDOMAIN

sudo touch /etc/nginx/sites-available/$SUBDOMAIN

TEXT="server {
  listen 80;
  server_name $SUBDOMAIN;
  root /var/www/$SUBDOMAIN;
  index index.html;
  default_type \"text/html\";
  location / {
    try_files \$uri \$uri/ =404;
  }
}"

sudo echo $TEXT > /etc/nginx/sites-available/$SUBDOMAIN

sudo ln -s /etc/nginx/sites-available/$SUBDOMAIN /etc/nginx/sites-enabled/

sudo mkdir /var/www/$SUBDOMAIN

sudo chown justin /var/www/$SUBDOMAIN

sudo service nginx reload

touch /var/www/$SUBDOMAIN/index.html

echo "This is the landing page" > /var/www/$SUBDOMAIN/index.html