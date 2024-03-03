

#!/bin/bash

#add user
sudo adduser git

#go to user's home

sudo mkdir /home/git/.ssh

sudo chmod 700 /home/git/.ssh

sudo touch /home/git/.ssh/authorized_keys

sudo chmod 600 /home/git/.ssh/authorized_keys

sudo chown -R git:git /home/git

#cat /tmp/id_rsa.ubuntu.pub

#cat /tmp/id_rsa.ubuntu.pub >> ~/.ssh/authorized_keys

sudo mkdir -p /srv/git/project.git

sudo chown -R git:git /srv

cd  /srv/git/project.git

git init --bare /srv/git/project.git

