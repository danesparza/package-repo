#!/bin/bash

curl -s --compressed "https://danesparza.github.io/package-repo/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/package-repo.gpg >/dev/null
sudo curl -s --compressed -o /etc/apt/sources.list.d/package-repo.list "https://danesparza.github.io/package-repo/package-repo.list"
sudo apt update
