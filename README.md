NYCRHPS
---

All NYCRHPS apps are hosted via Amazon Lightsail

`https://lightsail.aws.amazon.com/ls/webapp/home/resources`

This repo contains scripts for setting up a new vps instance.

When creating a new instance in lightsail, paste the contents of `./lightsail-launch-script.sh` into the AWS `Add Launch Script` option.

Add a static ip address to the instance.  This static IP will be needed to be entered into A/AAAA Records in the DNS setup with the Nameserver.
