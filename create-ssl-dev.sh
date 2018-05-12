mkdir /var/www/dev.nycrhps.com
sudo letsencrypt certonly --webroot -w /var/www/dev.nycrhps.com -d dev.nycrhps.com

(sudo crontab -l 2>/dev/null; echo "30 2 * * 1 /usr/bin/letsencrypt renew >> /var/log/le-renew.log")| sudo crontab -

(sudo crontab -l 2>/dev/null; echo "31 2 * * 1 sudo service nginx restart")| sudo crontab -

sudo service nginx restart;
