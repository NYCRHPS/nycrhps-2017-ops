server {
    listen 80;

    server_name dev-admin.nycrhps.org dev-admin.nycrhps.com;

    location / {
        proxy_pass http://127.0.0.1:8001;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;

        client_max_body_size       20m;
        client_body_buffer_size    128k;

        proxy_connect_timeout      90s;
        proxy_send_timeout         90s;
        proxy_read_timeout         90s;

        proxy_buffer_size          4k;
        proxy_buffers              4 32k;
        proxy_busy_buffers_size    64k;
        proxy_temp_file_write_size 64k;
    }
}
