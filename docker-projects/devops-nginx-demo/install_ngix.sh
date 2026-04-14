#!/bin/bash

# Simple Nginx Installation Script (Ubuntu/Debian)

echo "Updating package list..."
sudo apt update -y

echo "Installing Nginx..."
sudo apt install nginx -y

echo "Starting Nginx service..."
sudo systemctl start nginx

echo "Enabling Nginx on boot..."
sudo systemctl enable nginx

echo "Allowing Nginx through firewall (if UFW is active)..."
sudo ufw allow 'Nginx Full' 2>/dev/null

echo "Checking Nginx status..."
sudo systemctl status nginx --no-pager

echo "Installation completed!"
