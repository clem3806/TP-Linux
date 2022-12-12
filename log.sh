A=1
while [ $A -le $1 ]; do
	sudo touch /var/log/exercice/recent_logs/aaaaaa
	A=$[$A + 1]
done
