sudo apt update
sudo apt upgrade

# Optional
sudo apt install unzip xvfb libxi6 libgconf-2-4

chromium --product-version
sudo apt install chromium-driver

sudo apt install python3-pip
sudo apt install python3-dev python3-setuptools python3-wheel
sudo apt install build-essential libssl-dev libffi-dev
sudo apt install libxml2-dev libxslt1-dev

# Pyenv dependencies
sudo apt install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

sudo apt install --fix-broken

sudo apt install gnome-keyring
git config --global user.name "Luigi"
git config --global user.email paluigi@gmail.com

# from now can push/pull repositories
git config credential.helper 'cache --timeout=15000'

# Upgrade pip
python3 -m pip install --upgrade pip
# Pandas better installed from apt
sudo apt install python3-pandas
# Probably better to install lxml to from apt
# It takes forever to build...but below line is not tested
sudo apt install python3-lxml


# install pyenv
curl https://pyenv.run | bash

# Add following lines to .bashrc
# export PATH="$HOME/.pyenv/bin:$PATH"
# eval "$(pyenv init --path)"
# eval "$(pyenv virtualenv-init -)"


# Clone repo
git clone https://github.com/paluigi/selenium1.git

# INstall nordvpn - in the future, may witch to openvpn client
sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)
# Add current user ot nordvpn command
sudo usermod -aG nordvpn $USER

# Install rust for cryptography package
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# requirements installation
python3 -m pip install cryptography
python3 -m pip install boto3 minio scrapy requests selenium selenium-stealth

# Check python and pwd
which python3
pwd

# Add crontab entries for scraping and nordvpn check
crontab -e

# add following lines
@reboot nohup /usr/bin/python3 /home/luigi/Desktop/selenium1/check_vpn.py &
7 1 * * * nohup /home/luigi/Desktop/selenium1/scraping.sh & 