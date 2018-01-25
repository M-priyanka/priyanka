#!/bin/bash
##Steps for Test Drive
sudo apt-get install -y dos2unix 
sudo mkdir /tmp/azurefiles

## Restricted Environment Setup
sudo cp /bin/bash /bin/rbash 
sudo usermod -s /bin/rbash azureuser
sudo mkdir  -p /home/azureuser/programs
sudo wget -O /tmp/azurefiles/bashprofile.txt https://s3.amazonaws.com/verticatestdrive/PredictiveMaint/bashprofile.txt

sudo cat /tmp/azurefiles/bashprofile.txt | dos2unix | sudo tee /home/azureuser/.bash_profile

sudo ln -s /opt/puppetlabs/bin/puppet /home/azureuser/programs/
sudo ln -s /bin/ls /home/azureuser/programs/
sudo ln -s /usr/bin/cd /home/azureuser/programs/

sudo chattr +i /home/azureuser/.bash_profile

