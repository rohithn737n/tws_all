#This is a readme file for installing nginx

echo "Updating package list..."
sudo apt update -y

echo "Installing Nginx..."
sudo apt install nginx -y

echo "Starting Nginx service..."
sudo systemctl start nginx

echo "Enabling Nginx on boot..."
sudo systemctl enable nginx

webpage is kept at /var/www.nginix
