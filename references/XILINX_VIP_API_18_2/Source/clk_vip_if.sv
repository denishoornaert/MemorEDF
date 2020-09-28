//  (c) Copyright 2017 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
`ifndef _CLK_VIP_IF_SV_
`define _CLK_VIP_IF_SV_
`timescale 1ps/1ps


interface clk_vip_if #(
  int C_CLK_CLOCK_PERIOD              = 100
  );
  logic                            clk_a=0;
  logic                            clk;
  wire                             CLK;
  logic                            intf_is_master =0;
  int                              freq =100;
  int                              period = C_CLK_CLOCK_PERIOD;
  logic                            start=0;
  bit                              initial_value=0;
  int                              jitter_a=0;
  int                              jitter_range_a=6;
  int                              jitter=0;
  int                              jitter_range=1;
  bit                              jitter_on=0;
  real                             duty_cycle =0.5;
  real                             min_jitter_range =0;
  real                             max_jitter_range =0;

  initial begin
    clk = initial_value;
    clk_a = initial_value;
  end

  always begin
    if(initial_value ==0) begin
      if($urandom()%2 ==1) begin
        #((period *(1.0-duty_cycle)*1000 + update_jitter()*jitter_on)*1ps);
      end else begin
        #((period *(1.0-duty_cycle)*1000 - update_jitter()*jitter_on)*1ps);
      end 
      clk_a = 1'b1;
      if($urandom()%2 ==1) begin
        #((period *duty_cycle*1000 + update_jitter()*jitter_on)*1ps);
      end else begin
        #((period *duty_cycle*1000 - update_jitter()*jitter_on)*1ps);
      end
      clk_a =  1'b0;
    end else begin
      if($urandom()%2 ==1) begin
        #((period*duty_cycle*1000 + update_jitter()*jitter_on)*1ps);
      end else begin
        #((period *duty_cycle*1000 - update_jitter()*jitter_on)*1ps);
      end 
      clk_a =  1'b0;
      if($urandom()%2 ==1) begin
        #((period *(1.0-duty_cycle)*1000 + update_jitter()*jitter_on)*1ps);
      end else begin
        #((period *(1.0-duty_cycle)*1000 - update_jitter()*jitter_on)*1ps);
      end
      clk_a = 1'b1;
    end
  end
 
  always @(*)begin
    clk = (start ==1)? clk_a : initial_value;
  end

  function void set_duty_cycle(input real value);
    duty_cycle = value;
  endfunction : set_duty_cycle

  function real get_duty_cycle();
    return(duty_cycle);
  endfunction : get_duty_cycle

  /*
   Function: set_clk_prd
   set the feature of clock period, duty_cycle, jitter on/off,minmum jitter and maximum jitter
  */
  task set_clk_prd(input real user_period =100, 
                            input real user_duty_cycle=0.5, 
                            input bit  user_jitter_on =0, 
                            input real user_jitter_min_range =0.0, 
                            input real user_jitter_max_range =0.0) 
    if(initial_value==1) begin
      @(posedge clk_a);
    end else begin
      @(negedge clk_a);
    end
    set_clk_period(user_period);
    set_duty_cycle(user_duty_cycle);
    if(user_jitter_on ==1) begin
      turn_on_jitter();
    end else begin
      turn_off_jitter();
    end
    set_jitter_range(user_jitter_min_range, user_jitter_max_range);
  endtask : set_clk_prd

   /*
   Function: set_clk_frq
   set the feature of clock period, duty_cycle, jitter on/off,minmum jitter and maximum jitter
  */
  task set_clk_frq(input int user_frequency =10000000,
                            input real user_duty_cycle =0.5, 
                            input bit user_jitter_on =0, 
                            input real user_jitter_min_range =0.0,
                            input real user_jitter_max_range =0.0);
    if(initial_value==1) begin
      @(posedge clk_a);
    end else begin
      @(negedge clk_a);
    end
    set_clk_period(1000000000/user_frequency);
    set_duty_cycle(user_duty_cycle);
    if(user_jitter_on ==1) begin
      turn_on_jitter();
    end else begin
      turn_off_jitter();
    end
    set_jitter_range(user_jitter_min_range, user_jitter_max_range);
  endtask : set_clk_frq

  /*
   Function set_jitter_range
   Set minumum and maximum jitter value(in percentage)
  */
  function void set_jitter_range(input real min, input real max);
    if(min > max) begin
      $fatal(1,"set max value smaller than min value");
    end else begin 
      if(max >2.0 || min <0.0) begin
        $fatal(1,"out of range");
      end else begin 
        min_jitter_range = min;
        max_jitter_range = max;
      end 
    end 
  endfunction :set_jitter_range

  /*
   Function:  get_min_jitter_range
   Returns minimum jitter range
  */
  function real get_min_jitter_range();
    return(min_jitter_range);
  endfunction :get_min_jitter_range

  /*
   Function: get_max_jitter_range
   Returns maximum jitter range
  */
  function real get_max_jitter_range();
    return(max_jitter_range);
  endfunction :get_max_jitter_range

  function int update_jitter();
    int real_jitter;
    int temp_min;
    int temp_max;
    temp_min = get_min_jitter_range()*100;
    temp_max = get_max_jitter_range()*100;
    assert(std::randomize(real_jitter) with {real_jitter>= temp_min; real_jitter<= temp_max;});
    return(real_jitter);
  endfunction

 /*
  Function: set_initial_value
  Sets the initial value of clk in clk vip
 */ 
  function void set_initial_value(input bit value);
    initial_value = value;
  endfunction : set_initial_value

 /*
  Function: get_initial_value
  Returns the initial value of clk in clk vip
 */ 
  function bit get_initial_value();
    return(initial_value);
  endfunction : get_initial_value

 /*
  Function turn_on_jitter
  Sets the jitter_on to be 1 so that user can set jitter of clk if they want
 */ 
  function void turn_on_jitter();
    jitter_on = 1;
  endfunction : turn_on_jitter
 
 /*
  Function turn_off_jitter
   Sets the jitter_on to be 1 so that clk has no jitter
 */ 
  function void turn_off_jitter();
    jitter_on = 0;
  endfunction : turn_off_jitter

 /*
  Function: get_jitter_range
  Returns the jitter range of the clk
 */ 
  function int get_jitter_range();
    return(jitter);
  endfunction : get_jitter_range

  /*
   Function  set_clock_freq
   Sets the current clock frequency of the clock generation
  */
  function void set_clk_freq (input int value);
    freq = value;
  endfunction : set_clk_freq

  /*
   Function:  get_clk_freq
   Returns the current clock period of the clock generation
  */
  function int get_clk_freq ();
    return(freq);
  endfunction : get_clk_freq

  /*
   Function  set_clk_period
   Sets the current clock period of the clock generation
  */
  function void set_clk_period (input int value);
    period = value;
  endfunction : set_clk_period

  /*
   Function:  get_clk_period
   Returns the current clock period of the clock generation
  */
  function int get_clk_period ();
    return(period);
  endfunction : get_clk_period

  /* 
   Function: start_clock
   Starts clock running,
  */
  task start_clock();
    if(initial_value ==0) begin
      @(negedge clk_a);
    end else begin
       @(posedge clk_a);
    end
    start =1;
  endtask : start_clock

  /*
  Function : stop_clock
  Stops clock running, 
  */
  task stop_clock();
    if(initial_value ==0) begin
      @(negedge clk_a);
    end else begin
      @(posedge clk_a);
    end
    start =0;
  endtask : stop_clock

  /*
  *  Function: set_intf_master
  *  Sets interface to master mode
  */
  function void set_intf_master();
    intf_is_master = 1;
  endfunction : set_intf_master

  /*
  *  Function: set_intf_monitor
  *  Sets interface to monitor mode
  */
  function void set_intf_monitor();
    intf_is_master = 0;
  endfunction : set_intf_monitor

  assign CLK = intf_is_master ? clk : 'z;
endinterface : clk_vip_if

`endif

