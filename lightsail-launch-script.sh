#install node
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -;
sudo apt-get install -y nodejs;

#install nginx
sudo apt-get install -y nginx;
sudo ufw allow 'Nginx HTTP';
sudo systemctl enable nginx;

#install mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6;
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list;
sudo apt-get update;
sudo apt-get install -y mongodb-org;
sudo service mongod start;
sudo systemctl enable mongod.service

#install pm2
sudo npm install pm2 -g;

cd ~/;
git clone https://github.com/NYCRHPS/nycrhps-2017-ops.git;

#setup nginx config files
sudo rm /etc/nginx/sites-enabled/*
sudo cp ~/nycrhps-2017-ops/nginx/sites-available/* /etc/nginx/sites-available;
sudo ln -s /etc/nginx/sites-available/* /etc/nginx/sites-enabled/;
sudo service nginx restart;


#letsencrypt
sudo apt-get install letsencrypt -y
