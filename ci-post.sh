#!/bin/bash

# Not in the container
cd /home/packagerepo/work/package-repo
git add .
git commit -m "Update"
git push

