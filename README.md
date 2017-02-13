NYCRHPS
---

All NYCRHPS apps are hosted via Amazon Lightsail

`https://lightsail.aws.amazon.com/ls/webapp/home/resources`

This repo contains scripts for setting up a new vps instance.

When creating a new instance in lightsail, paste the contents of `./lightsail-launch-script.sh` into the AWS `Add Launch Script` option.

After it launches, THE NEXT STEPS MUST BE DONE MANUALLY

- ssh into the box and run

``$ ssh-keygen -t rsa -b 4096 -C "directors@nycrhps.org"``

``cat ~/.ssh/id_rsa.pub``

- put into github ``https://github.com/settings/keys``

- run the installer script

``$ cd nycrhps-2017-ops;``

``$ ./clone-install-app.sh;``

- Add a static ip address to the instance.  This static IP will be needed to be entered into A/AAAA Records in the DNS setup with the Nameserver.

- After the nameserver changes propogate.  SSH into the box and create the ssl certs for the main website.

``$ cd nycrhps-2017-ops``

``$ ./create-ssl-[dev|prod].sh``
