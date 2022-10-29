echo [LOG] Installing PufferPanel... make sure you are running this script as ROOT!!!

curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash

apt-get install pufferpanel

apt update

apt install docker

apt install docker.io

echo [LOG] Install complete! 

systemctl enable pufferpanel && systemctl start pufferpanel

echo [LOG] Pufferpanel has been enabled on system restart...

sudo ufw enable

echo [LOG] UFW is now enabled!

sudo ufw allow 8080

sudo ufw allow 8080/tcp
sudo ufw allow 8080/udp
sudo ufw allow 5657



sudo ufw allow 5657/tcp

sudo ufw allow 5657/udp

sudo ufw reload

echo [LOG] Ports  5657/tcp 5657/udp and 8080/tcp 8080/udp are enabled! Make sure to allow them in your firewall!

echo [LOG] Install is now complete! Now you have to add a user!
pufferpanel user add
