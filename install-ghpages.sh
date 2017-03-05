#!/bin/bash

## Usage: ./install-ghpages.sh adrianharabula

sudo apt-get install ruby ruby-dev zlib1g-dev
sudo gem install bundler

git clone github.com:$1/$1.github.io
cd $1.github.io

bundler install