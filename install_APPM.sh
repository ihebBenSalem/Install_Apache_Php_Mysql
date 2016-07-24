# This script helps you to install apache2,php5,mysql-server,phpmyadmin
#By IhebBenSalem@SOFT.DEV=>email:ihebbensalem.isetcom@gmail.com

#-----------------------------_APACHE2_
sudo apt-get update
sudo apt-get install apache2
#-----------------------------_MYSQL_SERVER_
ifconfig wlan1 | grep inet | awk '{ print $2 }'
sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation
#------------------------------_PHP5_
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
cd /etc/apache2/mods-enabled/
sudo sed -i -e 's/index.html/index.txt/g' dir.conf
sudo sed -i -e 's/index.php/index.html/g' dir.conf  
sudo sed -i -e 's/index.txt/index.php/g'  dir.conf
#----------------------------_PHPMYADMIN_
sudo apt-get install phpmyadmin
sudo php5enmod mcrypt
#---------------------------_RESTART_SERVER_
sudo service apache2 restart
echo "Done !! have fun :D "

