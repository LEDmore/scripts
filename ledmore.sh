#!/bin/bash

# Create a temporary directory
mkdir -p /tmp/waveshare-CM-tools

# Download the file
wget -O /tmp/waveshare-CM-tools/waveshare-CM-tools.zip "https://files.waveshare.com/wiki/PCIe%20TO%205G%20HAT%2B/Dial-Tool/waveshare-CM-tools.zip"

# Extract the file
unzip /tmp/waveshare-CM-tools/waveshare-CM-tools.zip -d /tmp/waveshare-CM-tools

# Create the destination directory
sudo mkdir -p /etc/waveshare-CM-tools

# Copy files to the destination directory
sudo cp -r /tmp/waveshare-CM-tools/waveshare-CM-tools/* /etc/waveshare-CM-tools/

# Create a symbolic link
sudo ln -sf /etc/waveshare-CM-tools/waveshare-CM /usr/local/bin/waveshare-CM

# Clean up temporary files
rm -rf /tmp/waveshare-CM-tools

# Delete itself
rm -- "$0"

# Completion message
echo "Installation completed. You can now run 'waveshare-CM' using 'sudo'."
