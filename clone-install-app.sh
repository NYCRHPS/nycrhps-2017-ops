cd ~/;
git clone git@github.com:Tidwell/nycrhps-2017.git;
cd nycrhps-2017;
npm install;

cd ~/;
git clone git@github.com:Tidwell/nycrhps-2017-admin.git;
cd nycrhps-2017-admin;
npm install;

sudo pm2 start pm2-apps.config.js
sudo pm2 startup

