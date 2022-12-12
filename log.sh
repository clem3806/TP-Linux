A=1
while [ $A -le $1 ]; do
	E="$(mktemp)"
	F="$(cat /dev/urandom | tr -dc '[:alpha:]' | head -c10)"
	sudo mv $E /var/log/exercice/recent_logs/$F
	cat /dev/urandom | tr -dc '[:alpha:]' | head -c10 > /var/log/exercice/recent_logs/$F
	A=$[$A + 1]
done
