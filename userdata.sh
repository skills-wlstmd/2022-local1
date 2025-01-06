#!/bin/bash -xe
exec > >(sudo tee /var/log/user-data.log|sudo sh -c "logger -t user-data -s 2>/dev/console") 2>&1
sudo yum install -y httpd
sudo service httpd start
sudo chkconfig httpd on
cd /var/www/html
sudo echo "200 ok" > index.html