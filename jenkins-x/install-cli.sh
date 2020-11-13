#!/usr/bin/env bash

# Download the `.tar` file, and unarchive it in a directory where you can run the `jx` command.
curl -L "https://github.com/jenkins-x/jx/releases/download/$(curl --silent "https://github.com/jenkins-x/jx/releases/latest" | sed 's#.*tag/\(.*\)\".*#\1#')/jx-linux-amd64.tar.gz" | tar xzv "jx"

# Move binary to your path
sudo mv jx /usr/local/bin

# verify installation
jx version --short