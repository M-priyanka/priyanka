#!/bin/bash
##Steps for Test Drive
sudo apt-get install -y dos2unix 
sudo mkdir /tmp/azurefiles

## Restricted Environment Setup
sudo cp /bin/bash /bin/rbash 
sudo usermod -s /bin/rbash suse
sudo mkdir  -p /home/suse/programs
sudo wget -O /tmp/azurefiles/bashprofile.txt https://s3.amazonaws.com/verticatestdrive/PredictiveMaint/bashprofile.txt

sudo cat /tmp/azurefiles/bashprofile.txt | dos2unix | sudo tee /home/suse/.bash_profile

#sudo ln -s /opt/puppetlabs/bin/puppet /home/azureuser/programs/
sudo ln -s /bin/ls /home/suse/programs/
sudo ln -s /usr/bin/cd /home/suse/programs/
sudo ln -s /usr/bin/ssh /home/suse/programs/


sudo chattr +i /home/suse/.bash_profile

