sudo apt-get update && sudo apt-get upgrade -y

wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java7_64.sh && bash equip_java7_64.sh

sudo apt-get install -y tomcat7 tomcat7-admin
sudo cp /vagrant/jmxtrans/setenv.sh /usr/share/tomcat7/bin/setenv.sh
sudo chmod 777 /usr/share/tomcat7/bin/setenv.sh
sudo cp /vagrant/tomcat/tomcat-users.xml /etc/tomcat7/tomcat-users.xml
sudo service tomcat7 restart