#!/bin/bash

set -ex

INSTALL_DIR="$(
	cd "$(dirname $(dirname "$0")/../..)"
	pwd
)"
echo $INSTALL_DIR

# Install Brew dependencies
echo "Installing Brew dependencies"

chmod +x "$INSTALL_DIR/bin/brew.sh"
"$INSTALL_DIR/bin/brew.sh"

echo "brew.sh executed successfully."

# Stow dotfiles
cd "$INSTALL_DIR"
echo "Running stow..."
stow . --adopt
echo "stow command executed successfully."

# Copy LaunchAgents && load it
echo "Copying mapping FN to CTRL"
pwd

cp ./macos/com.local.KeyRemapping.plist ~/Library/LaunchAgents/

echo "Loading mapping"
launchctl load ~/Library/LaunchAgents/com.local.KeyRemapping.plist

echo "Checking mapping is loaded"
launchctl list | grep com.local.KeyRemapping

echo "Check next steps on README.md to continue installation"
cat $INSTALL_DIR/README.md
