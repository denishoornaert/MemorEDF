# Scheduler and controller logic

## Example
1. There are ```p0``` and ```p1``` in ```Q0``` and ```Q2``` respectively.
2. ```Q0``` is considered for scheduling. Following the logic, ```p0``` stays in ```Q0``` but is forwarded to the *selector* as ```Q0``` is not high.
3. While the *selector* forward the packet ```p0``` to the *serializer*, the *scheduler* emits a ```TXN``` (i.e. activate) signal.
4. Upon the reception of this signal, the *serializer* converts the packet back into a **AXI** transaction.
5. The *serializer* will inform the *scheduler*, once the transaction performed, that he is ready to accept the next packet as input through a signal named ```consumed```.
6. The scheduler waits for the ```consumed``` signal before doing anything else. The only exception being the detection of a full queue and the subsequent activation of the corresponding policy.
7. Whenever the ```consumed``` signal is risen, the latter is routed to the *scheduler* which forwards the signal to the adequate queue (i.e the one who contained the packet). The *scheduler* also changes the queue ID depending on the what the scheduling module selected by the end user outputs. In the present example, the ```consumed``` signal forwarded by the *scheduler* is sent to ```Q0```.
8. At this point, two scenarios are still possible.
  - ```Q0``` is still considered for scheduling following the selected scheduling module. Therefore, as ```Q0``` is empty, ```Q0``` outputs an ```empty``` signal received by the *scheduler*. The latter then decides to not send any ```TXN``` (i.e. activate) signal as there is nothing to left to read in the selected queue.
  - ```Q1``` is now considered instead of ```Q0```. In this case, the ```consumed``` signal is sent to ```Q0``` while the queue ID changes. This results in the message contained inside ```Q1``` to be forwarded to the *selector*. The sequence of steps followed by the circuit will be exactly the same as in point **1**.
