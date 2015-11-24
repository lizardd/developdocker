#!/bin/bash

curl -O https://storage.googleapis.com/golang/go1.4.1.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.4.1.linux-amd64.tar.gz
mkdir -p ~/go; echo "export GOPATH=$HOME/go" >> ~/.zshrc
echo "export PATH=$PATH:$HOME/go/bin:/usr/local/go/bin" >> ~/.zshrc
source ~/.zshrc