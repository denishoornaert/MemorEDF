NDContentPage.OnToolTipsLoaded({774:"<div class=\"NDToolTip TClass LSystemverilog\"><div class=\"NDClassPrototype\" id=\"NDClassPrototype774\"><div class=\"CPEntry TClass Current\"><div class=\"CPName\">axi_vif_mem_proxy</div></div></div><div class=\"TTSummary\">AXI VIF Proxy Class. It has virtual interface for AXI VIP interface. Drivers of AXI VIP drive transaction/ready onto AXI VIP bus interface through APIs(such as&nbsp; put_w/rdata) of this class, monitor of AXI VIP collects AXI interface information and convert it into transaction through APIs(get_w/rdata) in this class.</div></div>",866:"<div class=\"NDToolTip TClass LSystemverilog\"><div class=\"NDClassPrototype\" id=\"NDClassPrototype866\"><div class=\"CPEntry TClass Current\"><div class=\"CPName\">axi_monitor</div></div></div><div class=\"TTSummary\">When active the AXI Monitor will record transactions that are presented on the virtual interface.It does below functions: Monitors all 5 AXI channels: AW, AR, R, W, and B.&nbsp; Collects and re-orders R Channel beats and returns a completed transaction when the RLAST is accepted Collects and re-orders B Channel response and returns a completed transaction when the B channel is accepted Transaction based protocol checking</div></div>",886:"<div class=\"NDToolTip TClass LSystemverilog\"><div class=\"NDClassPrototype\" id=\"NDClassPrototype886\"><div class=\"CPEntry TClass Current\"><div class=\"CPName\">axi_mst_wr_driver</div></div></div><div class=\"TTSummary\">AXI Master Write Driver class. The Driver will issue the commands on the AW channel and payload on the W channel. It will declare the transaction as complete when the B channel is acknowledge with the same ID. It has below features:</div></div>",918:"<div class=\"NDToolTip TClass LSystemverilog\"><div class=\"NDClassPrototype\" id=\"NDClassPrototype918\"><div class=\"CPEntry TClass Current\"><div class=\"CPName\">axi_mst_rd_driver</div></div></div><div class=\"TTSummary\">AXI Master Read Driver class.&nbsp; It receives READ transactions from the user environment and drives the AR channel</div></div>",980:"<div class=\"NDToolTip TClass LSystemverilog\"><div class=\"NDClassPrototype\" id=\"NDClassPrototype980\"><div class=\"CPEntry TClass Current\"><div class=\"CPName\">axi_slv_wr_driver</div></div></div><div class=\"TTSummary\">AXI Slave Write Driver Class.It does : Receives AW Command and the WLAST from the interface and then passes that transaction to the user environment, the user will then create a BRESP transaction and pass it back to the driver to drive the B channel.</div></div>",1020:"<div class=\"NDToolTip TClass LSystemverilog\"><div class=\"NDClassPrototype\" id=\"NDClassPrototype1020\"><div class=\"CPEntry TClass Current\"><div class=\"CPName\">axi_slv_rd_driver</div></div></div><div class=\"TTSummary\">AXI Slave Read Driver Class. It does below: Receives AR Command from the interface and then passes that command to the user environment. The user will then create a READ transaction and pass it back to the driver to drive the R channel.</div></div>",1046:"<div class=\"NDToolTip TClass LSystemverilog\"><div class=\"NDClassPrototype\" id=\"NDClassPrototype1046\"><div class=\"CPEntry TClass Current\"><div class=\"CPName\">xil_axi_slv_mem_model</div></div></div><div class=\"TTSummary\">AXI Memory Model class. It is an associate array of Systemverilog. The write transaction can write to the memory and the read transaction can read data from the memory. These two features are implemented in the Slave VIP and Passthrough VIP in runtime slave mode. At the same time, the memory model has backdoor APIs for user to access memory directly. Please refer PG267 section about Simple SRAM Memory Model for more details.</div></div>",1098:"<div class=\"NDToolTip TClass LSystemverilog\"><div class=\"NDClassPrototype\" id=\"NDClassPrototype1098\"><div class=\"CPEntry TClass Current\"><div class=\"CPName\">axi_passthrough_agent</div></div></div><div class=\"TTSummary\">AXI Passthrough Agent Class.The AXI passthrough agent is comprised of other classes which are monitor, runtime master write driver, runtime master read driver, runtime slave write driver, runtime slave read driver. By default, passthrough agent is in monitor mode. In order to issue transaction as master, it has to be switched to runtime master mode, in order to receive transaction, it has to be switched into runtime slave mode. Please refer PG 267 section about &quot;Useful Coding Guidelines and Examples&quot; for more details.</div></div>",1128:"<div class=\"NDToolTip TClass LSystemverilog\"><div class=\"NDClassPrototype\" id=\"NDClassPrototype1128\"><div class=\"CPEntry TClass Current\"><div class=\"CPName\">axi_passthrough_mem_agent</div></div></div><div class=\"TTSummary\">AXI Passthrough Agent with memory model. It inherits all the features of axi_passthough_agent and on top of that it has a memory model(Refer PG267 for memory model structure and usage).</div></div>"});