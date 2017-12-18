echo cd ~
echo users/who/whoami >> /tmp/script
echo "today is : $(date)" >> /tmp/script
echo "the no.of.users logged in as $(who -q)" >> /tmp/script
echo "the terminal: ($UID)" >> /tmp/script

