#!/bin/bash

# Redmine installation
sudo apt-get update
sudo apt-get install -y git ruby-httpclient
sudo apt-get install -y postgresql
sudo DEBIAN_FRONTEND=noninteractive apt-get  install -y redmine-pgsql
sudo apt-get install -y apache2 libapache2-mod-passenger
sudo cp /usr/share/doc/redmine/examples/apache2-passenger-host.conf /etc/apache2/sites-available/redmine.conf
sudo a2enmod passenger
sudo a2ensite redmine.conf
sudo a2dissite 000-default
sudo systemctl reload apache2


# Slack plugin installation
sudo mkdir -p /usr/share/redmine/plugins
cd /usr/share/redmine/plugins
sudo git clone https://github.com/sciyoshi/redmine-slack.git redmine_slack
cd redmine_slack
sudo bundle install
sudo systemctl reload apache2
