A="$(df -i / | cut -c 40-42 | cut -d ' ' -f 2 | tail -1)"
#verification de la quantite d'inodes utilisees
if [ $A -ge 15 ]; then
	#HODOOOR!
	echo 'HODOOOR!!!'
	#generation du nom de l'archive
	E="$(cat /dev/urandom | tr -dc '[:alpha:]' | head -c10)"
	#archivage des fichiers et anihilation du mur de texte genere
	sudo tar -zcvf /var/log/exercice/archives/$E.tar.gz /var/log/exercice/recent_logs >> /dev/null
	#supression des fichiers dans le dossier original
	sudo rm /var/log/exercice/recent_logs/*
fi
