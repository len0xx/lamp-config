# Update packages
sudo apt update && sudo apt upgrade -y

# Apache
sudo apt install apache2 -y

# MySQL
sudo apt install mariadb-server -y
sudo mysql <<EOF
CREATE USER 'len0xx'@'localhost' IDENTIFIED  BY 'JWnShAYcSg2';
GRANT ALL ON *.* TO 'len0xx'@'localhost' IDENTIFIED BY 'JWnShAYcSg2' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit
EOF

# PHP & PHPMyAdmin
sudo apt-get install aptitude -y
sudo aptitude -t buster-backports install php-twig -y
sudo apt install php libapache2-mod-php php-curl php-json php-cgi php-gd php-zip php-mbstring php-xml php-xmlrpc php-mysql phpmyadmin php-bz2 php-tcpdf -y <<EOF
 
PASSWORD123
PASSWORD123
EOF
sudo phpenmod mbstring
sudo systemctl restart apache2

# Create a website directory
sudo apt install git -y
mkdir /home/vagrant/repo
git init /home/vagrant/repo
git config --global user.email prokhor@len0xx.space
git config --global user.name Prokhor
touch /home/vagrant/repo/.git/hooks/post-receive
echo "#!/bin/bash
unset GIT_INDEX_FILE
git --work-tree=/var/www/html --git-dir=/home/vagrant/repo/.git checkout -f" >> /home/vagrant/repo/.git/hooks/post-receive
chmod +x /home/vagrant/repo/.git/hooks/post-receive
