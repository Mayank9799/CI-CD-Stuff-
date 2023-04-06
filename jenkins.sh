#!/bin/bash

# Update package index
sudo apt-get update 
echo 'Updating Packages '

# Install OpenJDK 11 JRE
sudo apt install openjdk-11-jre -y
echo 'Installing JAVA '

# Add Jenkins key to keyring
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo 'Adding Jenkins key to keyring'


# Add Jenkins repository to sources list
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
echo ' Add Jenkins repository to sources list'

# Update package index
sudo apt-get update
echo 'Updating Packages '

# Install Jenkins
sudo apt-get install jenkins -y
echo 'Installing Jenkins  '

# Enabelling  Jenkins
sudo systemctl enable jenkins
echo 'Enabelling Jenkins '

# Start Jenkins
sudo systemctl start jenkins
echo 'Starting Jenkins  '


#Jenkins Status 
sudo systemctl status jenkins
echo ' Jenkins Status  '

