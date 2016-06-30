## WIP ##


PB_DIR=/opt/piratebox

wget http://downloads.piratebox.de/piratebox-ws_current.tar.gz
tar xzf piratebox-ws_current.tar.gz
cd piratebox #(le "vrai" dossier PB est dans le dossier dézippé!)
sudo cp -r piratebox /opt/
sudo bash $PB_DIR/bin/install_piratebox.sh $PB_DIR/conf/piratebox.conf part2
