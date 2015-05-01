## WIP ##
sudo apt-get install lighttpd dnsmasq hostapd iw
wget http://downloads.piratebox.de/piratebox-ws_current.tar.gz
tar xzf piratebox-ws_current.tar.gz
cd piratebox #(le "vrai" dossier PB est dans le dossier dézippé!)
sudo cp piratebox /opt/
cd /opt/piratebox
sudo bash bin/install_piratebox.sh ../conf/piratebox.conf imageboard pyForum # (là, erreur dûe au dossier d'Upload/data = FAT32, à voir avec un ln -s...)
