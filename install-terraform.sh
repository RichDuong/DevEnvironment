#!/bin/bash
#Simple bash script for installing terraform on an ubuntu based machine
#Source: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

echo "Running script to install terraform"
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint
echo "Does it Mach: E8A0 32E0 94D8 EB4E A189 D270 DA41 8C88 A321 9F7B ?"
sudo apt update
sudo apt-get install terraform
