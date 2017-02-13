#install node
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -;
sudo apt-get install -y nodejs;

#install mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6;
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list;
sudo apt-get update;
sudo apt-get install -y mongodb-org;
sudo service mongod start;

#install pm2
sudo npm install pm2 -g;

cd ~/;
git clone git@github.com:NYCRHPS/nycrhps-2017-ops.git;

#TODO-copy ssh key

#run the installer script
cd nycrhps-2017-ops;
./clone-install-app.sh;
