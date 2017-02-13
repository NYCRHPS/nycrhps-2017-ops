mkdir /var/www/www.nycrhps.org
sudo letsencrypt certonly --webroot -w /var/www/www.nycrhps.org -d www.nycrhps.com -d nycrhps.com -d nycrhps.org -d www.nycrhps.org

(sudo crontab -l 2>/dev/null; echo "30 2 * * 1 /usr/bin/letsencrypt renew >> /var/log/le-renew.log")| sudo crontab -
