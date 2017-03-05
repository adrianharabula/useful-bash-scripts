#!/bin/bash

#Usage: ./initial-gitsetup.sh adrian.harabula@gmail.com "Adrian Harabula"

# Clean old values if any
git config --global --unset user.email
git config --global --unset user.name

# Set git for first time use
git config --global user.email "$1"
git config --global user.name "$2"

# Output current values
git config user.email
git config user.name