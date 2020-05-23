apt-get update
apt-get -y install git language-pack-ru language-pack-gnome-ru
locale-gen ru_RU.UTF-8
update-locale LANG=ru_RU.UTF-8
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
echo "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vs-code.list
apt-get update
apt-get -y install code