#!/bin/bash

# Update package information and install Apache web server
apt-get update
apt-get install -y apache2

# Clear existing content in the default web directory
sudo rm -rf /var/www/html/*   # Use '-rf' to recursively and forcefully remove all files and subdirectories

# Clone the HTML template from the GitHub repository to the web directory
sudo git clone https://github.com/arjunans/static-webpage.git /var/www/html

# Restart the Apache service to apply changes
sudo systemctl restart apache2
