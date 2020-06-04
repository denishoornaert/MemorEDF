for i in $(seq 5)
do
	for j in $(seq 0 5)
	do
		for k in $(seq 16)
		do
			expdone=$(devmem 0x801010000 32)
			prevdone=$expdone
			while [ "$expdone" == "$prevdone" ]
			do
				expdone=$(devmem 0x801010000 32)
			done
		done

		if [ "$expdone" == "0x000000DD" ]
		then
			jailhouse cell alt 1 $j
		else
			prevdone=$expdone
             	  	while [ "$expdone" == "$prevdone" ]
		  	do
		     		expdone=$(devmem 0x801010000 32)
		  	done
			jailhouse cell alt 1 $j
		fi
	done
done
