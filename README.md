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
 - **Dispatcher**: 
