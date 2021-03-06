server {
    listen 80;
    listen 443 ssl;

    server_name dev.nycrhps.com dev.nycrhps.org;

    ssl_certificate /etc/letsencrypt/live/dev.nycrhps.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/dev.nycrhps.com/privkey.pem;

    location / {
        proxy_pass http://127.0.0.1:8000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }

    root /var/www/dev.nycrhps.com;

    location ~ /.well-known {
        allow all;
    }
}
