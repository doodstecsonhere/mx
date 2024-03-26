#update
sudo apt update -y && sudo apt upgrade -y

# debloat mx
# sudo apt purge -y simple-scan transmission-qt featherpad galculator gtkhash gxkb mc mcedit xfburn yad lbreakout2 gnome-mahjongg peg-e swell-foop gmtp strawberry && \

#install apps in official repos
sudo apt install -y \
oxygencursors \
gnome-calculator \
kdeconnect \
gnome-control-center \
gnome-online-accounts \
xfce4-panel-profiles && \

#spotify repo correction
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6224F9941A8AA6D1 && \
sudo apt-get update -y && \

#update
sudo apt update -y && sudo apt upgrade -y && \

#install apps not in official repos
#timeshift-autosnap
sudo apt install -y git make && \
git clone https://github.com/wmutschl/timeshift-autosnap-apt.git /home/$USER/timeshift-autosnap-apt
cd /home/$USER/timeshift-autosnap-apt
yes | sudo make install && \
cd && sudo reboot

