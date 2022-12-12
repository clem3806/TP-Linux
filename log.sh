A=1
while [ $A -le $1 ]; do
	mktemp | 
	E=
	sudo mv $E /var/log/exercice/recent_logs
	A=$[$A + 1]
done
