A=1
while [ $A -le $1 ]; do
	#creation du fichier
	E="$(mktemp)"
	#generation du nom compose de caracteres aleatoires
	F="$(cat /dev/urandom | tr -dc '[:alpha:]' | head -c10)"
	#deplacement du fichier et changement de son nom
	sudo mv $E /var/log/exercice/recent_logs/$F
	#remplissage du fichier avec dix caracteres aleatoires
	cat /dev/urandom | tr -dc '[:alpha:]' | head -c10 > /var/log/exercice/recent_logs/$F
	A=$[$A + 1]
done
