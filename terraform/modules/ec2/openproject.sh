#!/bin/bash
# Update the package repository
sudo yum update -y

# Install Docker
curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh

# Add the ec2-user to the Docker group
sudo usermod -aG docker ec2-user

# Enable and start Docker service
sudo systemctl enable docker
sudo systemctl start docker

# Run the OpenProject container, exposing port 8080
sudo docker run -d -p 8080:80 \
  -e OPENPROJECT_SECRET_KEY_BASE=secret \
  -e OPENPROJECT_HTTPS=false \
  openproject/openproject:15.4.1