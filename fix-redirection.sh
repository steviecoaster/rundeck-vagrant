sudo -u rundeck sed -i 's/localhost/192.168.50.2/g' /etc/rundeck/rundeck-config.properties
sudo service rundeckd restart