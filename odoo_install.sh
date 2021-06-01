#!/bin/bash
VERSION=$1
wget -O - https://nightly.odoo.com/odoo.key | apt-key add -
echo "deb http://nightly.odoo.com/$VERSION/nightly/deb/ ./" >> /etc/apt/sources.list.d/odoo.list
apt-get update && apt-get install odoo
dpkg -i wkhtmltox_0.12.6.deb
apt-get install -f
dpkg -i wkhtmltox_0.12.6.deb
apt-get install python3-pip -y
pip3 install xlwt
pip3 install num2words
pip3 install inotify