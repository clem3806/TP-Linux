
echo "HODOOOR !!!" | wall
E="$(cat /dev/urandom | tr -dc '[:alpha:]' | head -c10)"
sudo tar -zcvf /var/log/exercice/archives/$E.tar.gz /var/log/exercice/recent_logs
sudo rm /var/log/exercice/recent_logs/*
