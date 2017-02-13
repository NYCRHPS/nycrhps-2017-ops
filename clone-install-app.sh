ssh-keygen -t rsa;
cat ~/.ssh/id_rsa.pub;

#Add the generated key to github account https://github.com/settings/keys

git clone git@github.com:Tidwell/nycrhps-2017.git;
cd nycrhps-2017;
npm install;

sudo pm2 startup
