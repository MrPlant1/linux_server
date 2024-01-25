#!/bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt-get install rsyslog 

echo 'module(load="imudp")'
etc/rsyslog.conf
echo 'input(type="imudp" port="514")'
etc/rsyslog.conf
echo 'module(load="imtcp")'
etc/rsyslog.conf
echo 'input(type="imtcp" port="514")'
etc/rsyslog.conf
sudo systemctl restart rsyslog

sudo apt-get install ansible
cd ~
mkdir ansible
cd ansible/
touch inventory
sudo systemctl restart ansible

sudo apt install -y apache2 php libapache2-mod-php php-mysql autoconf gcc make unzip libgd-dev libmcrypt-dev libssl-dev dc snmp libnet-snmp-perl gettext
sudo ufw allow "Apache Full"

cd ~
mkdir nagios
cd nagios/

sudo wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.5.0.tar.gz
sudo tar -xvf nagios-4.5.0.tar.gz

cd nagios-4.5.0/
sudo ./configure --with-httpd-conf=/etc/apache2/sites-enabled
sudo make all
sudo make install-groups-users
sudo uisermod -a -G nagios www-data
sudo make install
sudo make install-daemoninit
sudo make install-commandmode
sudo make install-config
sudo make install-webconf
sudo a2enmod rewrite cgi
sudo usermod -a -G nagios www-data
sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin
sudo systemctl restart apache2

cd ..
curl -L -O https://nagios-plugins.org/download/nagios-plugins-2.4.8.tar.gz
tar zxf nagios-plugins-2.4.8.tar.gz
cd nagios-plugins-2.4.8
./configure
make
sudo make install

cd ..
curl -L -O https://github.com/NagiosEnterprises/nrpe/releases/download/nrpe-4.1.0/nrpe-4.1.0.tar.gz
tar zxf nrpe-4.1.0.tar.gz
cd nrpe-3.2.1
./configure
make check_nrpe
sudo make install-plugin

cd /usr/local/nagios/etc/
sudo echo "cfg_dir=/usr/local/nagios/etc/servers" >> nagios.cfg
sudo mkdir servers

cd objects
sudo echo "define command{" >> commands.cfg
sudo echo "	command_name check_nrpe" >> commands.cfg
sudo echo "	command_line $USER1$/check_nrpe -H $HOSTADDRESS$ -c $ARG1$" >> commands.cfg
sudo echo "}" >> commands.cfg

cd ~
sudo systemctl restart apache2
sudo systemctl restart nagios
sudo systemctl enable apache2
sudo systemctl enable nagios
sudo systemctl status apache2
sudo systemctl status nagios 
