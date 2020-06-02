jailhouse cell create ../jailhouse_PL/configs/arm64/rtas_membomb1.cell
jailhouse cell create ../jailhouse_PL/configs/arm64/rtas_membomb2.cell
jailhouse cell load 2 ../jailhouse_PL/inmates/demos/arm64/mem-demo.bin
jailhouse cell load 3 ../jailhouse_PL/inmates/demos/arm64/mem-demo.bin
jailhouse cell start 2
jailhouse cell start 3

#Enabling root cell bomb
./rootcell_ps_bomb 0 0 0 0 0 0 0 1 &

