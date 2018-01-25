#!/bin/bash
##Steps for Test Drive
sudo apt-get install -y dos2unix 
sudo mkdir /tmp/azurefiles

## Restricted Environment Setup
sudo cp /bin/bash /bin/rbash 
sudo usermod -s /bin/rbash suseser
sudo mkdir  -p /home/suseuser/programs
sudo wget -O /tmp/azurefiles/bashprofile.txt https://s3.amazonaws.com/verticatestdrive/PredictiveMaint/bashprofile.txt

sudo cat /tmp/azurefiles/bashprofile.txt | dos2unix | sudo tee /home/suseuser/.bash_profile

#sudo ln -s /opt/puppetlabs/bin/puppet /home/azureuser/programs/
sudo ln -s /bin/ls /home/suseuser/programs/
sudo ln -s /usr/bin/cd /home/suseuser/programs/
sudo ln -s /usr/bin/ssh /home/suseuser/programs/


sudo chattr +i /home/suseuser/.bash_profile

