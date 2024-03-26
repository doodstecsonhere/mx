#update
sudo apt update -y && sudo apt upgrade -y

#pimpmystremio-bin
wget https://github.com/sungshon/PimpMyStremio/releases/download/v1.2.2/PimpMyStremio-linux.zip
unzip PimpMyStremio-linux.zip
#stremio-service-bin
wget https://dl.strem.io/stremio-service/v0.1.12/stremio-service_amd64.deb
sudo apt install -y ~/stremio-service_amd64.deb
#floorp-bin
curl -fsSL https://ppa.ablaze.one/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/Floorp.gpg
sudo curl -sS --compressed -o /etc/apt/sources.list.d/Floorp.list 'https://ppa.ablaze.one/Floorp.list'
sudo apt update -y && \
sudo apt install -y floorp
#tgpt-bin
curl -sSL https://raw.githubusercontent.com/aandrew-me/tgpt/main/install | bash -s /usr/local/bin && \
sudo apt install -y -f

#normcap pypi

#setup pipx
sudo apt install -y pipx && pipx ensurepath  # Add pipx tools to your PATH
# Install normcap
pipx install normcap && \
#fix $PATH
echo 'export PATH=$PATH:/home/doods/.local/bin' >> ~/.bashrc && \
source ~/.bashrc && \
#create executable file
echo '#!/bin/bash
/home/doods/.local/bin/normcap' > run_normcap.sh && \
chmod +x ~/run_normcap.sh && \

#clean-up files
sudo rm -rf ~/PimpMyStremio-linux.zip ~/stremio-service_amd64.deb && \
#clean-up folders
sudo rm -rf ~/timeshift-autosnap-apt && \

#maintenance
sudo apt autoremove --purge -y && sudo apt clean && sudo apt purge $(dpkg -l | awk '/^rc/ { print $2 }') && sudo journalctl --vacuum-size=50M && flatpak uninstall --unused && \

#update
sudo apt update -y && sudo apt upgrade -y
