#!/bin/bash

cd /repo/

# Packages & Packages.gz
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

# Release, Release.gpg & InRelease
apt-ftparchive release . > Release
gpg --pinentry-mode loopback --passphrase ${PASSPHRASE} --batch --no-tty --default-key "${EMAIL}" -abs -o - Release > Release.gpg
gpg --pinentry-mode loopback --passphrase ${PASSPHRASE} --batch --no-tty --default-key "${EMAIL}" --clearsign -o - Release > InRelease

# Reset permisisons
chown -R ubuntu:ubuntu .
