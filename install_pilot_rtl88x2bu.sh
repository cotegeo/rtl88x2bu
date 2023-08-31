#!/bin/bash

#=============================
#Sylvain BECQUAERT Cotégéo
#31 août 2023
#Ce script permet de réinstaller le pilote pour la clé WIFI rtl88x2bu
#=============================

echo '1> Clonage du programme d''installation de Cylinx'

git clone https://github.com/cilynx/rtl88x2bu.git

cd rtl88x2bu

sudo make backup_rtlwifi

make

sudo make install

sudo modprobe 88x2bu

date=$(date "+%d/%m/%Y %T")
echo "====================="
echo ${date}" : Fin"
echo "====================="
