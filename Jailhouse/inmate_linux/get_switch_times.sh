for i in $(seq 100)
do
	sleep 1
	jailhouse cell alt 1 2
	sleep 1
	jailhouse cell alt 1 1
done
