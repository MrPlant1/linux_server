./configure --with-httpd-conf=/etc/apache2/sites-enabled
make all
sudo make install-groups-users
sudo make install
sudo make install-daemoninit
sudo make install-commandmode
sudo make install-config
sudo make install-webconf
sudo a2enmod rewrite
sudo a2enmod cgi
sudo usermod -a -G nagios www-data
sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin
sudo systemctl restart apache2
cd ..
curl -L -O https://nagios-plugins.org/download/nagios-plugins-2.4.8.tar.gz
tar zxf nagios-plugins-2.4.8.tar.gz
ls
cd nagios-plugins-2.4.8
./configure
make
sudo make install
cd ..
curl -L -O https://github.com/NagiosEnterprises/nrpe/releases/download/nrpe-4.1.0/nrpe-4.1.0.tar.gz
tar zxf nrpe-4.1.0.tar.gz
cd nrpe-4.1.0
./configure
make check_nrpe
sudo make install-plugin
sudo nano /usr/local/nagios/etc/nagios.cfg
sudo mkdir /usr/local/nagios/etc/servers
sudo nano /usr/local/nagios/etc/objects/commands.cfg
sudo systemctl start nagios
/usr/local/nagios/libexec/check_nrpe -H 192.168.0.25
sudo cd /usr/local/nagios/etc/servers/
ls
cd /usr/local/nagios/etc/servers/
ls
nano docker-436135.conf 
systemctl restart nagios
nano /usr/local/nagios/etc/nagios.cfg
cd /usr/local/nagios/etc/servers/
ls
nano docker-436135.conf 
/usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg
/usr/local/nagios/etc/objects/hosts.cfg
nano /usr/local/nagios/etc/objects/hosts.cfg
cd /usr/local/nagios/etc/onbjects
ls
cd /usr/local/nagios/etc/objects
ls
cd ~
ls
cd nagios
ls
cd nagios-4.5.0
ls
cd /usr/local/nagios/etc/servers
ls
ip a
nano /usr/local/nagios/etc/nagios.cfg
cd /etc/
ls
cd nagios
cd ~
ls
cd nagios
ls
cd nagios-4.5.0
ls
cd urt
cd usr
cd usr.
cd usr/
cd /usr/
ls
nano /usr/local/nagios/etc/
cd /usr/local/nagios/etc/
ls
cd servers
ls
cd objects
nano objects
ls
cd ..
cd objects/
ls
cdnano localhost.cfg
nano localhost.cfg
systemctl restart nagios
cd ~
ls
cd ansible/
ls
cd inventory 
ls
nano inventory 
systemctl status ansible
ansible --version
ls
nano docker_install.yml
ls
nano docker_install.yml 
nano monitor_update.yml
nano log_update.yml
ls
cd ..
ls
cat install-main-server.sh 
ls
cd ansible
ls
$ sudo vim /etc/apache2/apache2.conf
sudo vim /etc/apache2/apache2.conf
sudo nano /etc/apache2/apache2.conf
cd ansible
ls
nano inventory 
nano docker_install.yml 
nano inventory 
ansible help
ansible -i inventory 
ansible -i inventory docker_install.yml
run ansible-playbook -i inventory docker_install.yml
ansible-playbook -i inventory docker_install.yml
ansible-playbook -i inventory docker_install.yml --ask-pass
apt install sshpass
ansible-playbook -i inventory docker_install.yml --ask-pass
nano docker_install.yml 
ansible-playbook -i inventory docker_install.yml --ask-pass --ask-sudo-pass
ansible-playbook -i inventory docker_install.yml --ask-pass --ask-become-pass
nano /etc/ssh/sshd_config
ansible-playbook -i inventory docker_install.yml
ansible reload
systemctl ansible restart
systemctl restart ansible
ansible restart
ansible-playbook -i inventory docker_install.yml
nano /etc/ssh/sshd_config
ansible-playbook -i inventory docker_install.yml
ansible-playbook -i inventory docker_install.yml --ask-pass
ansible-playbook -i inventory docker_install.yml --ask-pass --ask-become-pass
nano /etc/ssh/sshd_config
ansible-playbook -i inventory docker_install.yml --ask-pass --ask-become-pass
sudo systemctl restart ssh
ansible-playbook -i inventory docker_install.yml --ask-pass --ask-become-pass
nano /etc/ssh/sshd_config
sudo systemctl restart ssh
ansible-playbook -i inventory docker_install.yml
ansible-playbook -i inventory docker_install.yml --ask-pass
nano /etc/ansible/hosts
cd /etc/
ls
cd ~
ls
cd ansible/
ls
nano inventory 
nano docker_install.yml 
nano vars/default.yml
nano docker_install.yml 
ansible-playbook --syntax-check docker_install.yml 
ansible-playbook --syntax-check docker_install.yml -i inventory 
ansible-playbook docker_install.yml -i inventory
ansible -vvvv
ansible 192.168.0.25 -m ping -vvvv
ansible 192.168.0.25 -m ping -vvvv -i inventory
ping 192.168.0.25
ansible-playbook docker_install.yml -i inventory --ask-pass
cd ~/.ssh
ls
nano known_hosts 
cd ~/ansible
nano inventory 
ansible-playbook docker_install.yml -i inventory -u jasper --ask-pass
ansible-playbook docker_install.yml -i inventory -u jasper --ask-pass --ask-become-pass
ls
mkdir wordpress_install
ls
cd wordpress_install/
ls
mkdir roles
touch hosts
touch playbook.yml
nano hosts
cd roles
ls
ansible-galaxy init server
ansible-galaxy init php
ansible-galaxy init mysql
ansible-galaxy init wordpress
cd ..
nano playbook.yml 
cd roles/
ls
cd server
ls
cd tasks
nano main.yml 
cd ../../tasks
cd roles/php/tasks
cd /roles/php/tasks
cd /roles/php/tasks/
cd ..
ls
cd php
cd tasks/
nano main.yml 
cd ../roles/mysql/defaults/
cd ~/ansible/wordpress_install/roles/mysql/defaults/
nano main.yml 
cd ..
nano /tasks/main.yml
nano tasks/main.yml
cd ..
nano wordpress/tasks/main.yml 
nano wordpress/handlers/main.yml 
cd ..
ls
ansible-playbook playbook.yml -i hosts -u jasper --ask-pass --ask-become-pass
nano playbook.yml 
ansible-playbook playbook.yml -i hosts -u jasper --ask-pass --ask-become-pass
nano playbook.yml 
ansible-playbook playbook.yml -i hosts -u jasper --ask-pass --ask-become-pass
nano playbook.yml 
ansible-playbook playbook.yml -i hosts -u jasper --ask-pass --ask-become-pass
ansible-playbook --syntax-check
ansible-playbook --syntax-check playbook.yml 
ansible-playbook --syntax-check playbook.yml -i hosts
nano playbook.yml 
ansible-playbook --syntax-check playbook.yml -i hosts
nano # tasks file for server
nano /roles/server/tasks/main.yml
ls
cd roles
cd server
cd tasks
nano main.yml 
ansible-playbook --syntax-check main.yml -i hosts
nano main.yml 
ansible-playbook --syntax-check main.yml -i hosts
ansible-playbook --syntax-check main.yml
nano main.yml 
cd ..
ls
cd ..
ls
ansible-playbook playbook.yml -i hosts -u jasper --ask-pass --ask-become-pass
nano /root/ansible/wordpress_install/roles/php/tasks/main.yml
ansible-playbook playbook.yml -i hosts -u jasper --ask-pass --ask-become-pass
nano /root/ansible/wordpress_install/roles/mysql/tasks/main.yml
ansible-playbook playbook.yml -i hosts -u jasper --ask-pass --ask-become-pass
nano /root/ansible/wordpress_install/roles/mysql/tasks/main.yml
ansible-playbook playbook.yml -i hosts -u jasper --ask-pass --ask-become-pass
nano /root/ansible/wordpress_install/roles/wordpress/tasks/main.yml
ansible-playbook playbook.yml -i hosts -u jasper --ask-pass --ask-become-pass
nano /root/ansible/wordpress_install/roles/wordpress/tasks/main.yml
ansible-playbook playbook.yml -i hosts -u jasper --ask-pass --ask-become-pass
nano /root/ansible/wordpress_install/roles/wordpress/handlers/main.yml
ansible-playbook playbook.yml -i hosts -u jasper --ask-pass --ask-become-pass
cd ~/.ansible.cfg
cd ~
ls
cd ansible/
ls
cd ..
cd /var
ls
cd /etc/
ls
ansible-config --diabled > ansible.cfg
ansible-config list
