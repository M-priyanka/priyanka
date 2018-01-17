#!/bin/bash
##Steps for Test Drive
sudo apt-get install -y dos2unix 
sudo mkdir /tmp/azurefiles

## Restricted Environment Setup
sudo cp /bin/bash /bin/rbash 
sudo usermod -s /bin/rbash wpuser
sudo mkdir  -p /home/wpuser/programs
sudo wget -O /tmp/azurefiles/bashprofile.txt https://s3.amazonaws.com/verticatestdrive/PredictiveMaint/bashprofile.txt

sudo cat /tmp/azurefiles/bashprofile.txt | dos2unix | sudo tee /home/wpuser/.bash_profile

sudo ln -s /bin/ls /home/wpuser/programs/
sudo ln -s /usr/bin/cd /home/wpuser/programs/

sudo chattr +i /home/wpuser/.bash_profile

