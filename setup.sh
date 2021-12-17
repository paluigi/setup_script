sudo apt update
sudo apt upgrade

# Optional
sudo apt install unzip xvfb libxi6 libgconf-2-4

chromium --product-version
sudo apt install chromium-driver

sudo apt install python3-pip
sudo apt install python3-dev python3-setuptools python3-wheel

sudo apt install gnome-keyring
git config --global user.name "Luigi"
git config --global user.email paluigi@gmail.com

# from now can push/pull repositories
git config credential.helper 'cache --timeout=15000'

python3 -m pip install --upgrade pip

# Clone repo
git clone https://github.com/paluigi/selenium1.git