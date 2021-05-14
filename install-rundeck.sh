#!/usr/bin/env bash
curl -L https://packages.rundeck.com/pagerduty/rundeck/gpgkey | sudo apt-key add -
sudo echo 'deb https://packages.rundeck.com/pagerduty/rundeck/any/ any main' >> /etc/apt/sources.list.d/rundeck.list
sudo echo 'deb-src https://packages.rundeck.com/pagerduty/rundeck/any/ any main' >> /etc/apt/sources.list.d/rundeck.list
sudo apt-get update
sudo apt-get install openjdk-8-jre -y
sudo apt-get install rundeck -y

sudo service rundeckd start
