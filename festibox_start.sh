#!/bin/bash

###########
##  WIP  ##
###########

# Lancer en tant que root
if [[ $EUID -ne 0 ]]; then
        echo "Attention: Ce script doit être lancé avec les droits d'administration (sudo)" #1>&2
        exit 0
fi

# Checker la présence des services: TODO
# et les tuer

#Tuer les services
/etc/init.d/lighttpd stop
/etc/init.d/dnsmasq stop
/etc/init.d/hostapd stop
echo "###############"
echo "#Services tués#"
echo "###############"
echo ""

# Tuer le serveur existant
/etc/init.d/apache2 stop
echo "#######################"
echo "#serveur apache éteint#"
echo "#######################"
echo ""

# Tuer le network-manager
/etc/init.d/network-manager stop
echo "#######################"
echo "#Network-manager coupé#"
echo "#######################"
echo ""

# Lancer Fab'BriqueBox
/etc/init.d/piratebox start
echo ""
echo "###################################################"
echo "#  La Fab'BriqueBox est lancée et opérationnelle  #"
echo "#  Ouvrez un navigateur, et RDV à l'adresse:      #"
echo "#              http://piratebox.lan               #"
echo "###################################################"
echo ""

exit 0
