#!/bin/bash
set -e # Exit immediately if a command exits with a non-zero status.

echo "Updating package list and installing nginx..."

# Update package list
sudo apt-get update
# Install nginx
sudo apt-get install -y nginx
echo "Nginx installation completed successfully."

# copy html files to nginx root directory
echo "Copying HTML to nginx root directory..."
sudo cp index.html /var/www/html/

echo "Deployment completed successfully."

