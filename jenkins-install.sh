
#!/bin/bash

# Jenkins Installation on Ubuntu EC2
# Author: Mohammed Abdul Razak

set -euo pipefail

echo "=================================="
echo " Starting Jenkins Installation"
echo "=================================="

# Update Ubuntu packages
sudo apt-get update -y

# Install Java 21 and required packages
sudo apt-get install -y fontconfig openjdk-21-jre curl

# Verify Java installation
java -version

# Add Jenkins repository key
sudo mkdir -p /usr/share/keyrings

sudo curl -fsSL \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key \
  -o /usr/share/keyrings/jenkins-keyring.asc

# Add Jenkins LTS repository
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" \
  | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update package list
sudo apt-get update -y

# Install Jenkins
sudo apt-get install -y jenkins

# Enable Jenkins at startup
sudo systemctl enable jenkins

# Start Jenkins
sudo systemctl start jenkins

# Check Jenkins service
sudo systemctl status jenkins --no-pager

echo "=================================="
echo " Jenkins Installation Completed!"
echo "=================================="

echo "Jenkins URL: http://YOUR_PUBLIC_IP:8080"

echo "Initial Admin Password Command:"
echo "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"