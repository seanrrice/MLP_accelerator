set moduleName computeTiles_Pipeline_k_BLOCK_loop_k_loop_i_loop
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 13
set C_modelName {computeTiles_Pipeline_k_BLOCK_loop_k_loop_i_loop}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ or_ln74_15 int 512 regular  }
	{ or_ln74_14 int 512 regular  }
	{ or_ln74_13 int 512 regular  }
	{ or_ln74_12 int 512 regular  }
	{ or_ln74_11 int 512 regular  }
	{ or_ln74_10 int 512 regular  }
	{ or_ln74_9 int 512 regular  }
	{ or_ln74_8 int 512 regular  }
	{ or_ln74_7 int 512 regular  }
	{ or_ln74_6 int 512 regular  }
	{ or_ln74_5 int 512 regular  }
	{ or_ln74_4 int 512 regular  }
	{ or_ln74_3 int 512 regular  }
	{ or_ln74_2 int 512 regular  }
	{ or_ln74_1 int 512 regular  }
	{ or_ln74_s int 512 regular  }
	{ tmp_28 int 35 regular  }
	{ A_stream int 512 regular {fifo 0 volatile }  }
	{ B_stream int 512 regular {fifo 0 volatile }  }
	{ AB_block_15_2_out int 512 regular {pointer 1}  }
	{ AB_block_14_2_out int 512 regular {pointer 1}  }
	{ AB_block_13_2_out int 512 regular {pointer 1}  }
	{ AB_block_12_2_out int 512 regular {pointer 1}  }
	{ AB_block_11_2_out int 512 regular {pointer 1}  }
	{ AB_block_10_2_out int 512 regular {pointer 1}  }
	{ AB_block_9_2_out int 512 regular {pointer 1}  }
	{ AB_block_8_2_out int 512 regular {pointer 1}  }
	{ AB_block_7_2_out int 512 regular {pointer 1}  }
	{ AB_block_6_2_out int 512 regular {pointer 1}  }
	{ AB_block_5_2_out int 512 regular {pointer 1}  }
	{ AB_block_4_2_out int 512 regular {pointer 1}  }
	{ AB_block_3_2_out int 512 regular {pointer 1}  }
	{ AB_block_2_2_out int 512 regular {pointer 1}  }
	{ AB_block_1_2_out int 512 regular {pointer 1}  }
	{ AB_block_0_2_out int 512 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "or_ln74_15", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln74_14", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln74_13", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln74_12", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln74_11", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln74_10", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln74_9", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln74_8", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln74_7", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln74_6", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln74_5", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln74_4", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln74_3", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln74_2", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln74_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln74_s", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_28", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "A_stream", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "B_stream", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_15_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_14_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_13_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_12_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_11_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_10_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_9_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_8_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_7_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_6_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_5_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_4_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_3_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_2_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_1_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_0_2_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_stream_dout sc_in sc_lv 512 signal 17 } 
	{ A_stream_empty_n sc_in sc_logic 1 signal 17 } 
	{ A_stream_read sc_out sc_logic 1 signal 17 } 
	{ A_stream_num_data_valid sc_in sc_lv 6 signal 17 } 
	{ A_stream_fifo_cap sc_in sc_lv 6 signal 17 } 
	{ B_stream_dout sc_in sc_lv 512 signal 18 } 
	{ B_stream_empty_n sc_in sc_logic 1 signal 18 } 
	{ B_stream_read sc_out sc_logic 1 signal 18 } 
	{ B_stream_num_data_valid sc_in sc_lv 6 signal 18 } 
	{ B_stream_fifo_cap sc_in sc_lv 6 signal 18 } 
	{ or_ln74_15 sc_in sc_lv 512 signal 0 } 
	{ or_ln74_14 sc_in sc_lv 512 signal 1 } 
	{ or_ln74_13 sc_in sc_lv 512 signal 2 } 
	{ or_ln74_12 sc_in sc_lv 512 signal 3 } 
	{ or_ln74_11 sc_in sc_lv 512 signal 4 } 
	{ or_ln74_10 sc_in sc_lv 512 signal 5 } 
	{ or_ln74_9 sc_in sc_lv 512 signal 6 } 
	{ or_ln74_8 sc_in sc_lv 512 signal 7 } 
	{ or_ln74_7 sc_in sc_lv 512 signal 8 } 
	{ or_ln74_6 sc_in sc_lv 512 signal 9 } 
	{ or_ln74_5 sc_in sc_lv 512 signal 10 } 
	{ or_ln74_4 sc_in sc_lv 512 signal 11 } 
	{ or_ln74_3 sc_in sc_lv 512 signal 12 } 
	{ or_ln74_2 sc_in sc_lv 512 signal 13 } 
	{ or_ln74_1 sc_in sc_lv 512 signal 14 } 
	{ or_ln74_s sc_in sc_lv 512 signal 15 } 
	{ tmp_28 sc_in sc_lv 35 signal 16 } 
	{ AB_block_15_2_out sc_out sc_lv 512 signal 19 } 
	{ AB_block_15_2_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ AB_block_14_2_out sc_out sc_lv 512 signal 20 } 
	{ AB_block_14_2_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ AB_block_13_2_out sc_out sc_lv 512 signal 21 } 
	{ AB_block_13_2_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ AB_block_12_2_out sc_out sc_lv 512 signal 22 } 
	{ AB_block_12_2_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ AB_block_11_2_out sc_out sc_lv 512 signal 23 } 
	{ AB_block_11_2_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ AB_block_10_2_out sc_out sc_lv 512 signal 24 } 
	{ AB_block_10_2_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ AB_block_9_2_out sc_out sc_lv 512 signal 25 } 
	{ AB_block_9_2_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ AB_block_8_2_out sc_out sc_lv 512 signal 26 } 
	{ AB_block_8_2_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ AB_block_7_2_out sc_out sc_lv 512 signal 27 } 
	{ AB_block_7_2_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ AB_block_6_2_out sc_out sc_lv 512 signal 28 } 
	{ AB_block_6_2_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ AB_block_5_2_out sc_out sc_lv 512 signal 29 } 
	{ AB_block_5_2_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ AB_block_4_2_out sc_out sc_lv 512 signal 30 } 
	{ AB_block_4_2_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ AB_block_3_2_out sc_out sc_lv 512 signal 31 } 
	{ AB_block_3_2_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ AB_block_2_2_out sc_out sc_lv 512 signal 32 } 
	{ AB_block_2_2_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ AB_block_1_2_out sc_out sc_lv 512 signal 33 } 
	{ AB_block_1_2_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ AB_block_0_2_out sc_out sc_lv 512 signal 34 } 
	{ AB_block_0_2_out_ap_vld sc_out sc_logic 1 outvld 34 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "A_stream", "role": "dout" }} , 
 	{ "name": "A_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_stream", "role": "empty_n" }} , 
 	{ "name": "A_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_stream", "role": "read" }} , 
 	{ "name": "A_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "A_stream", "role": "num_data_valid" }} , 
 	{ "name": "A_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "A_stream", "role": "fifo_cap" }} , 
 	{ "name": "B_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "B_stream", "role": "dout" }} , 
 	{ "name": "B_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_stream", "role": "empty_n" }} , 
 	{ "name": "B_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_stream", "role": "read" }} , 
 	{ "name": "B_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "B_stream", "role": "num_data_valid" }} , 
 	{ "name": "B_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "B_stream", "role": "fifo_cap" }} , 
 	{ "name": "or_ln74_15", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_15", "role": "default" }} , 
 	{ "name": "or_ln74_14", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_14", "role": "default" }} , 
 	{ "name": "or_ln74_13", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_13", "role": "default" }} , 
 	{ "name": "or_ln74_12", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_12", "role": "default" }} , 
 	{ "name": "or_ln74_11", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_11", "role": "default" }} , 
 	{ "name": "or_ln74_10", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_10", "role": "default" }} , 
 	{ "name": "or_ln74_9", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_9", "role": "default" }} , 
 	{ "name": "or_ln74_8", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_8", "role": "default" }} , 
 	{ "name": "or_ln74_7", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_7", "role": "default" }} , 
 	{ "name": "or_ln74_6", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_6", "role": "default" }} , 
 	{ "name": "or_ln74_5", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_5", "role": "default" }} , 
 	{ "name": "or_ln74_4", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_4", "role": "default" }} , 
 	{ "name": "or_ln74_3", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_3", "role": "default" }} , 
 	{ "name": "or_ln74_2", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_2", "role": "default" }} , 
 	{ "name": "or_ln74_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_1", "role": "default" }} , 
 	{ "name": "or_ln74_s", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "or_ln74_s", "role": "default" }} , 
 	{ "name": "tmp_28", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "tmp_28", "role": "default" }} , 
 	{ "name": "AB_block_15_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_15_2_out", "role": "default" }} , 
 	{ "name": "AB_block_15_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_15_2_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_14_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_14_2_out", "role": "default" }} , 
 	{ "name": "AB_block_14_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_14_2_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_13_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_13_2_out", "role": "default" }} , 
 	{ "name": "AB_block_13_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_13_2_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_12_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_12_2_out", "role": "default" }} , 
 	{ "name": "AB_block_12_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_12_2_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_11_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_11_2_out", "role": "default" }} , 
 	{ "name": "AB_block_11_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_11_2_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_10_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_10_2_out", "role": "default" }} , 
 	{ "name": "AB_block_10_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_10_2_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_9_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_9_2_out", "role": "default" }} , 
 	{ "name": "AB_block_9_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_9_2_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_8_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_8_2_out", "role": "default" }} , 
 	{ "name": "AB_block_8_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_8_2_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_7_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_7_2_out", "role": "default" }} , 
 	{ "name": "AB_block_7_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_7_2_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_6_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_6_2_out", "role": "default" }} , 
 	{ "name": "AB_block_6_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_6_2_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_5_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_5_2_out", "role": "default" }} , 
 	{ "name": "AB_block_5_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_5_2_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_4_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_4_2_out", "role": "default" }} , 
 	{ "name": "AB_block_4_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_4_2_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_3_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_3_2_out", "role": "default" }} , 
 	{ "name": "AB_block_3_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_3_2_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_2_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_2_2_out", "role": "default" }} , 
 	{ "name": "AB_block_2_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_2_2_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_1_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_1_2_out", "role": "default" }} , 
 	{ "name": "AB_block_1_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_1_2_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_0_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_0_2_out", "role": "default" }} , 
 	{ "name": "AB_block_0_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_0_2_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	computeTiles_Pipeline_k_BLOCK_loop_k_loop_i_loop {
		or_ln74_15 {Type I LastRead 0 FirstWrite -1}
		or_ln74_14 {Type I LastRead 0 FirstWrite -1}
		or_ln74_13 {Type I LastRead 0 FirstWrite -1}
		or_ln74_12 {Type I LastRead 0 FirstWrite -1}
		or_ln74_11 {Type I LastRead 0 FirstWrite -1}
		or_ln74_10 {Type I LastRead 0 FirstWrite -1}
		or_ln74_9 {Type I LastRead 0 FirstWrite -1}
		or_ln74_8 {Type I LastRead 0 FirstWrite -1}
		or_ln74_7 {Type I LastRead 0 FirstWrite -1}
		or_ln74_6 {Type I LastRead 0 FirstWrite -1}
		or_ln74_5 {Type I LastRead 0 FirstWrite -1}
		or_ln74_4 {Type I LastRead 0 FirstWrite -1}
		or_ln74_3 {Type I LastRead 0 FirstWrite -1}
		or_ln74_2 {Type I LastRead 0 FirstWrite -1}
		or_ln74_1 {Type I LastRead 0 FirstWrite -1}
		or_ln74_s {Type I LastRead 0 FirstWrite -1}
		tmp_28 {Type I LastRead 0 FirstWrite -1}
		A_stream {Type I LastRead 2 FirstWrite -1}
		B_stream {Type I LastRead 2 FirstWrite -1}
		AB_block_15_2_out {Type O LastRead -1 FirstWrite 4}
		AB_block_14_2_out {Type O LastRead -1 FirstWrite 4}
		AB_block_13_2_out {Type O LastRead -1 FirstWrite 4}
		AB_block_12_2_out {Type O LastRead -1 FirstWrite 4}
		AB_block_11_2_out {Type O LastRead -1 FirstWrite 4}
		AB_block_10_2_out {Type O LastRead -1 FirstWrite 4}
		AB_block_9_2_out {Type O LastRead -1 FirstWrite 4}
		AB_block_8_2_out {Type O LastRead -1 FirstWrite 4}
		AB_block_7_2_out {Type O LastRead -1 FirstWrite 4}
		AB_block_6_2_out {Type O LastRead -1 FirstWrite 4}
		AB_block_5_2_out {Type O LastRead -1 FirstWrite 4}
		AB_block_4_2_out {Type O LastRead -1 FirstWrite 4}
		AB_block_3_2_out {Type O LastRead -1 FirstWrite 4}
		AB_block_2_2_out {Type O LastRead -1 FirstWrite 4}
		AB_block_1_2_out {Type O LastRead -1 FirstWrite 4}
		AB_block_0_2_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "34359738117"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "34359738117"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	or_ln74_15 { ap_none {  { or_ln74_15 in_data 0 512 } } }
	or_ln74_14 { ap_none {  { or_ln74_14 in_data 0 512 } } }
	or_ln74_13 { ap_none {  { or_ln74_13 in_data 0 512 } } }
	or_ln74_12 { ap_none {  { or_ln74_12 in_data 0 512 } } }
	or_ln74_11 { ap_none {  { or_ln74_11 in_data 0 512 } } }
	or_ln74_10 { ap_none {  { or_ln74_10 in_data 0 512 } } }
	or_ln74_9 { ap_none {  { or_ln74_9 in_data 0 512 } } }
	or_ln74_8 { ap_none {  { or_ln74_8 in_data 0 512 } } }
	or_ln74_7 { ap_none {  { or_ln74_7 in_data 0 512 } } }
	or_ln74_6 { ap_none {  { or_ln74_6 in_data 0 512 } } }
	or_ln74_5 { ap_none {  { or_ln74_5 in_data 0 512 } } }
	or_ln74_4 { ap_none {  { or_ln74_4 in_data 0 512 } } }
	or_ln74_3 { ap_none {  { or_ln74_3 in_data 0 512 } } }
	or_ln74_2 { ap_none {  { or_ln74_2 in_data 0 512 } } }
	or_ln74_1 { ap_none {  { or_ln74_1 in_data 0 512 } } }
	or_ln74_s { ap_none {  { or_ln74_s in_data 0 512 } } }
	tmp_28 { ap_none {  { tmp_28 in_data 0 35 } } }
	A_stream { ap_fifo {  { A_stream_dout fifo_data_in 0 512 }  { A_stream_empty_n fifo_status 0 1 }  { A_stream_read fifo_port_we 1 1 }  { A_stream_num_data_valid fifo_status_num_data_valid 0 6 }  { A_stream_fifo_cap fifo_update 0 6 } } }
	B_stream { ap_fifo {  { B_stream_dout fifo_data_in 0 512 }  { B_stream_empty_n fifo_status 0 1 }  { B_stream_read fifo_port_we 1 1 }  { B_stream_num_data_valid fifo_status_num_data_valid 0 6 }  { B_stream_fifo_cap fifo_update 0 6 } } }
	AB_block_15_2_out { ap_vld {  { AB_block_15_2_out out_data 1 512 }  { AB_block_15_2_out_ap_vld out_vld 1 1 } } }
	AB_block_14_2_out { ap_vld {  { AB_block_14_2_out out_data 1 512 }  { AB_block_14_2_out_ap_vld out_vld 1 1 } } }
	AB_block_13_2_out { ap_vld {  { AB_block_13_2_out out_data 1 512 }  { AB_block_13_2_out_ap_vld out_vld 1 1 } } }
	AB_block_12_2_out { ap_vld {  { AB_block_12_2_out out_data 1 512 }  { AB_block_12_2_out_ap_vld out_vld 1 1 } } }
	AB_block_11_2_out { ap_vld {  { AB_block_11_2_out out_data 1 512 }  { AB_block_11_2_out_ap_vld out_vld 1 1 } } }
	AB_block_10_2_out { ap_vld {  { AB_block_10_2_out out_data 1 512 }  { AB_block_10_2_out_ap_vld out_vld 1 1 } } }
	AB_block_9_2_out { ap_vld {  { AB_block_9_2_out out_data 1 512 }  { AB_block_9_2_out_ap_vld out_vld 1 1 } } }
	AB_block_8_2_out { ap_vld {  { AB_block_8_2_out out_data 1 512 }  { AB_block_8_2_out_ap_vld out_vld 1 1 } } }
	AB_block_7_2_out { ap_vld {  { AB_block_7_2_out out_data 1 512 }  { AB_block_7_2_out_ap_vld out_vld 1 1 } } }
	AB_block_6_2_out { ap_vld {  { AB_block_6_2_out out_data 1 512 }  { AB_block_6_2_out_ap_vld out_vld 1 1 } } }
	AB_block_5_2_out { ap_vld {  { AB_block_5_2_out out_data 1 512 }  { AB_block_5_2_out_ap_vld out_vld 1 1 } } }
	AB_block_4_2_out { ap_vld {  { AB_block_4_2_out out_data 1 512 }  { AB_block_4_2_out_ap_vld out_vld 1 1 } } }
	AB_block_3_2_out { ap_vld {  { AB_block_3_2_out out_data 1 512 }  { AB_block_3_2_out_ap_vld out_vld 1 1 } } }
	AB_block_2_2_out { ap_vld {  { AB_block_2_2_out out_data 1 512 }  { AB_block_2_2_out_ap_vld out_vld 1 1 } } }
	AB_block_1_2_out { ap_vld {  { AB_block_1_2_out out_data 1 512 }  { AB_block_1_2_out_ap_vld out_vld 1 1 } } }
	AB_block_0_2_out { ap_vld {  { AB_block_0_2_out out_data 1 512 }  { AB_block_0_2_out_ap_vld out_vld 1 1 } } }
}
