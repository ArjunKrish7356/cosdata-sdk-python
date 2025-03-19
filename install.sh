#!/bin/bash

set -e

REPO_URL="https://github.com/cosdata/cosdata-sdk-python.git"
INSTALL_DIR="$HOME/.cosdata-sdk-python"

echo "Installing cosdata-sdk-python"

if [ -d "$INSTALL_DIR" ]; then
    echo "removing existing installation..."
    rm -rf "$INSTALL_DIR"
fi

echo "cloning the repo from $REPO_URL..."
git clone "$REPO_URL" "$INSTALL_DIR"

cd "$INSTALL_DIR"

echo "installing dependencies using pip..."
pip install -e .

echo "Installation complete!"
