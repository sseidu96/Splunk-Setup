#!/bin/bash
# Author: Safiatu Seidu
# Script to install Docker on multiple Linux distributions

echo "Detecting operating system..."

if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$ID
else
    echo "Cannot detect operating system."
    exit 1
fi

echo "Operating System detected: $OS"

case $OS in
    ubuntu|debian)
        echo "Installing Docker on Ubuntu/Debian..."
        sudo apt update -y
        sudo apt install docker.io -y
        sudo systemctl start docker
        sudo systemctl enable docker
        ;;

    alpine)
        echo "Installing Docker on Alpine Linux..."
        sudo apk update
        sudo apk add docker
        sudo rc-update add docker boot
        sudo service docker start
        ;;

    amzn)
        echo "Installing Docker on Amazon Linux..."
        sudo yum update -y
        sudo amazon-linux-extras install docker -y
        sudo systemctl start docker
        sudo systemctl enable docker
        ;;

    rocky|ol)
        echo "Installing Docker on Rocky/Oracle Linux..."
        sudo yum update -y
        sudo yum install docker -y
        sudo systemctl start docker
        sudo systemctl enable docker
        ;;

    *)
        echo "Unsupported operating system: $OS"
        exit 1
        ;;
esac

echo "Adding current user to docker group..."
sudo usermod -aG docker $USER

echo "Checking Docker version..."
docker --version

echo "Docker installation completed successfully!"