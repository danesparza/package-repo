#!/bin/bash

curl -s --compressed "https://packages.cagedtornado.com/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/package-repo.gpg >/dev/null
sudo curl -s --compressed -o /etc/apt/sources.list.d/package-repo.list "https://packages.cagedtornado.com/package-repo.list"
sudo apt update
