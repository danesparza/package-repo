# package-repo
Repo for custom .deb packages

Tools used to build this:
```
apt install gnupg
apt install dpkg-dev
apt install apt-utils
```

To install:
```
curl -s --compressed "https://danesparza.github.io/package-repo/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/package-repo.gpg >/dev/null
sudo curl -s --compressed -o /etc/apt/sources.list.d/package-repo.list "https://danesparza.github.io/package-repo/package-repo.list"
sudo apt update

sudo apt install fxpixel
```
