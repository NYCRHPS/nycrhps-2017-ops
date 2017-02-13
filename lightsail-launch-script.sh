curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -;
sudo apt-get install -y nodejs;

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6;
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list;
sudo apt-get update;
sudo apt-get install -y mongodb-org;
sudo service mongod start;

sudo npm install pm2 -g;

#copy ssh key
#TODO

cd ~/;
git clone git@github.com:NYCRHPS/nycrhps-2017-ops.git;

cd ~/;
git clone git@github.com:Tidwell/nycrhps-2017.git;
cd nycrhps-2017;
npm install;

cd ~/;
git clone git@github.com:Tidwell/nycrhps-2017-admin.git;
cd nycrhps-2017-admin;
npm install;

cd nycrhps-2017-ops;
sudo pm2 start pm2-apps.config.js
sudo pm2 startup

