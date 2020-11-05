#!/bin/bash
# Running this script will delete a current subdomain

SUBDOMAIN=$1".justinapplegate.me"

echo "Deleting " $SUBDOMAIN "..."

sudo rm /etc/nginx/sites-available/$SUBDOMAIN

sudo rm /etc/nginx/sites-enabled/$SUBDOMAIN

sudo rm -rf /var/www/$SUBDOMAIN

sudo service nginx reload

echo $SUBDOMAIN "deleted"
