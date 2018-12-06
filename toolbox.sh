#!/bin/sh

clear
echo "##################################################
# ABERIA                                         #
# NOM DU SITE DISTANT                            #
# Script V1.0		                             #
##################################################"

#Proposition du menu
echo "Que voulez vous faire ?"
echo ""
echo "1) Voulez vous voir votre IP ?"
echo "2) Voulez vous arrêter/démarrer/redémarrer le service OpenVPN ?"
echo "3) Voulez vous transférer la sauvegarde de l'autocom ?"
echo "4) Voulez vous installer TeamViewer ?"
echo "5) Voulez vous installer OpenVPN ?"
#Lecture du choix de l'utilisateur
read choix

#Menu
case $choix in
  1) ifconfig;;
  2) echo "1)Arrêter"
	 echo "2)Démarrer"
	 # echo "3)Redémarrer"
	 read choix2 
		case $choix2 in
		1) service openvpn stop
			service openvpn status;;
		2) service openvpn start
			service openvpn status;;
		3) service openvpn restart
			service openvpn status;;
		esac
		;;
3) rsync -avzu source/ login@serveur:destination/;;
4) wget http://download.teamviewer.com/download/linux/version_11x/teamviewer-host_armhf.deb
	 dpkg -i teamviewer-host_armhf.deb
	 apt-get -f install
	 dpkg -i teamviewer-host_armhf.deb;;
5) apt install openvpn;;
  *) echo "MAUVAIS PARAMETRE !"
  sleep 1
  clear
	./toolbox.sh;;
esac