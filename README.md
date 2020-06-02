# MemorEDF

## Proposed µ-architecture

As shown in the figure below, the µ-architecture is composed of 7 different sub-modules (separated by dashed lines) and three different AXI ports. The following sections aims at explaining the functionalities of each sub-modules and AXI ports.
![MemorEDF hardware module schema](/doc/img/MemorEDF_module_schema.png)

### Communication ports
 - **AXI0**: Receives all the incoming read and write requests from the PL side.
 - **AXI1**: Sends requests directly to the main memory through one of the **hpm** slave ports of the PS side.
 - **AXI2**: The port is in charge of receiving all the meta-data related to the scheduling of the packets on the bus.

### Sub-modules
 - **Packetizer**: The module is in charge of receiving the AXI transactions and to transform each of them into a packet. With this regard, the sub-module basically acts as a "serial to parallel" digital circuit. The basic structure of the packets is the following: 128 bits are reserved for the meta-data (such as destination address, wstrb, and so on) and 4 times 128 bits for the data being transferred in the case of a write transaction. Once the packet created, the latter is routed to the next module via the ```packet``` port. At this point, the packet has become a sequence of bits and the notion of AXI has disappeared. Alongside the packet, the present module also outputs the id of the core who emitted the transaction. This id is retrieved either from the ```awid``` or the ```arid```. Finally, a signal is sent to inform the following sub-modules that the data available in both ```packet``` and ```id``` are valid.
 - **Dispatcher**: The dispatcher sub-module is in charge of routing the packet to the adequate queue depending on the ```id``` passed by the packetizer once the ```valid``` signal emitted by the same source is set to high. Typically, the dispatcher module is a 1 to 4 multiplexer. In addition to routing the packets, the sub-module also repeat/route the ```valid``` signal received from the packetizer.
 - **Queues**: The queues are in charge of buffering the packets created by the packetizer. Like in any producer consumer problem, the queues are in charge of informing both the producer and the consumer when it is full or empty. These two bits arrays are routed to the Scheduler sub-module and to the packetizer in order to adapt the scheduling and prevent the producer to over produce and crush data in the queues.
 - **Selector**: The selector sub-module is in charge of routing the first packet of every queues to the serializer sub-module given an id provided by the scheduler sub-module. The selector is also in charge once the first value of the targeted queue has been read and stored in a register to send a ```consumed``` signal to the queue targeted.

## Booting from the board

We need to save 1536M on top of the ram for JH


setenv bootargs "console=ttyPS0,115200 uio_pdrv_genirq.of_id=generic-uio earlycon clk_ignore_unused earlyprintk  cpuidle.off=1 mem=1536M root=/dev/mmcblk0p2 rw rootwait" 
setenv uenvcmd "fatload mmc 0 0x3000000 Image && fatload mmc 0 0x2A00000 system.dtb && booti 0x3000000 - 0x2A00000" 
setenv bootcmd "run uenvcmd"
saveenv
boot
