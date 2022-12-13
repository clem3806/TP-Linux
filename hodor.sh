A="$(df -i / | cut -c 40-42 | cut -d ' ' -f 2 | tail -1)"
if [ $A -ge 20 ]; then
	echo 'HODOOOR!!!'
	E="$(cat /dev/urandom | tr -dc '[:alpha:]' | head -c10)"
	sudo tar -zcvf /var/log/exercice/archives/$E.tar.gz /var/log/exercice/recent_logs >> /dev/null
	sudo rm /var/log/exercice/recent_logs/*
fi
