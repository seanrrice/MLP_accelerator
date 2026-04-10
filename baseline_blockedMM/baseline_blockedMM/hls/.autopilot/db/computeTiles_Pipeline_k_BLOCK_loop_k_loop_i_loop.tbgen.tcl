set moduleName computeTiles_Pipeline_k_BLOCK_loop_k_loop_i_loop
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
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
	{ AB_block_15 int 512 regular  }
	{ AB_block_14 int 512 regular  }
	{ AB_block_13 int 512 regular  }
	{ AB_block_12 int 512 regular  }
	{ AB_block_11 int 512 regular  }
	{ AB_block_10 int 512 regular  }
	{ AB_block_9 int 512 regular  }
	{ AB_block_8 int 512 regular  }
	{ AB_block_7 int 512 regular  }
	{ AB_block_6 int 512 regular  }
	{ AB_block_5 int 512 regular  }
	{ AB_block_4 int 512 regular  }
	{ AB_block_3 int 512 regular  }
	{ AB_block_2 int 512 regular  }
	{ AB_block_1 int 512 regular  }
	{ AB_block int 512 regular  }
	{ tmp_28 int 35 regular  }
	{ A_stream int 512 regular {fifo 0 volatile }  }
	{ B_stream int 512 regular {fifo 0 volatile }  }
	{ AB_block_31_out int 512 regular {pointer 1}  }
	{ AB_block_30_out int 512 regular {pointer 1}  }
	{ AB_block_29_out int 512 regular {pointer 1}  }
	{ AB_block_28_out int 512 regular {pointer 1}  }
	{ AB_block_27_out int 512 regular {pointer 1}  }
	{ AB_block_26_out int 512 regular {pointer 1}  }
	{ AB_block_25_out int 512 regular {pointer 1}  }
	{ AB_block_24_out int 512 regular {pointer 1}  }
	{ AB_block_23_out int 512 regular {pointer 1}  }
	{ AB_block_22_out int 512 regular {pointer 1}  }
	{ AB_block_21_out int 512 regular {pointer 1}  }
	{ AB_block_20_out int 512 regular {pointer 1}  }
	{ AB_block_19_out int 512 regular {pointer 1}  }
	{ AB_block_18_out int 512 regular {pointer 1}  }
	{ AB_block_17_out int 512 regular {pointer 1}  }
	{ AB_block_16_out int 512 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "AB_block_15", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_14", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_13", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_12", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_11", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_10", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_9", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_8", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_7", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_6", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_5", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_4", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_3", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_2", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_28", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "A_stream", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "B_stream", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_31_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_30_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_29_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_28_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_27_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_26_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_25_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_24_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_23_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_22_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_21_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_20_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_19_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_18_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_17_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_16_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
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
	{ AB_block_15 sc_in sc_lv 512 signal 0 } 
	{ AB_block_14 sc_in sc_lv 512 signal 1 } 
	{ AB_block_13 sc_in sc_lv 512 signal 2 } 
	{ AB_block_12 sc_in sc_lv 512 signal 3 } 
	{ AB_block_11 sc_in sc_lv 512 signal 4 } 
	{ AB_block_10 sc_in sc_lv 512 signal 5 } 
	{ AB_block_9 sc_in sc_lv 512 signal 6 } 
	{ AB_block_8 sc_in sc_lv 512 signal 7 } 
	{ AB_block_7 sc_in sc_lv 512 signal 8 } 
	{ AB_block_6 sc_in sc_lv 512 signal 9 } 
	{ AB_block_5 sc_in sc_lv 512 signal 10 } 
	{ AB_block_4 sc_in sc_lv 512 signal 11 } 
	{ AB_block_3 sc_in sc_lv 512 signal 12 } 
	{ AB_block_2 sc_in sc_lv 512 signal 13 } 
	{ AB_block_1 sc_in sc_lv 512 signal 14 } 
	{ AB_block sc_in sc_lv 512 signal 15 } 
	{ tmp_28 sc_in sc_lv 35 signal 16 } 
	{ AB_block_31_out sc_out sc_lv 512 signal 19 } 
	{ AB_block_31_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ AB_block_30_out sc_out sc_lv 512 signal 20 } 
	{ AB_block_30_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ AB_block_29_out sc_out sc_lv 512 signal 21 } 
	{ AB_block_29_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ AB_block_28_out sc_out sc_lv 512 signal 22 } 
	{ AB_block_28_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ AB_block_27_out sc_out sc_lv 512 signal 23 } 
	{ AB_block_27_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ AB_block_26_out sc_out sc_lv 512 signal 24 } 
	{ AB_block_26_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ AB_block_25_out sc_out sc_lv 512 signal 25 } 
	{ AB_block_25_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ AB_block_24_out sc_out sc_lv 512 signal 26 } 
	{ AB_block_24_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ AB_block_23_out sc_out sc_lv 512 signal 27 } 
	{ AB_block_23_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ AB_block_22_out sc_out sc_lv 512 signal 28 } 
	{ AB_block_22_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ AB_block_21_out sc_out sc_lv 512 signal 29 } 
	{ AB_block_21_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ AB_block_20_out sc_out sc_lv 512 signal 30 } 
	{ AB_block_20_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ AB_block_19_out sc_out sc_lv 512 signal 31 } 
	{ AB_block_19_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ AB_block_18_out sc_out sc_lv 512 signal 32 } 
	{ AB_block_18_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ AB_block_17_out sc_out sc_lv 512 signal 33 } 
	{ AB_block_17_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ AB_block_16_out sc_out sc_lv 512 signal 34 } 
	{ AB_block_16_out_ap_vld sc_out sc_logic 1 outvld 34 } 
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
 	{ "name": "AB_block_15", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_15", "role": "default" }} , 
 	{ "name": "AB_block_14", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_14", "role": "default" }} , 
 	{ "name": "AB_block_13", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_13", "role": "default" }} , 
 	{ "name": "AB_block_12", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_12", "role": "default" }} , 
 	{ "name": "AB_block_11", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_11", "role": "default" }} , 
 	{ "name": "AB_block_10", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_10", "role": "default" }} , 
 	{ "name": "AB_block_9", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_9", "role": "default" }} , 
 	{ "name": "AB_block_8", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_8", "role": "default" }} , 
 	{ "name": "AB_block_7", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_7", "role": "default" }} , 
 	{ "name": "AB_block_6", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_6", "role": "default" }} , 
 	{ "name": "AB_block_5", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_5", "role": "default" }} , 
 	{ "name": "AB_block_4", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_4", "role": "default" }} , 
 	{ "name": "AB_block_3", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_3", "role": "default" }} , 
 	{ "name": "AB_block_2", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_2", "role": "default" }} , 
 	{ "name": "AB_block_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_1", "role": "default" }} , 
 	{ "name": "AB_block", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block", "role": "default" }} , 
 	{ "name": "tmp_28", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "tmp_28", "role": "default" }} , 
 	{ "name": "AB_block_31_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_31_out", "role": "default" }} , 
 	{ "name": "AB_block_31_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_31_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_30_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_30_out", "role": "default" }} , 
 	{ "name": "AB_block_30_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_30_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_29_out", "role": "default" }} , 
 	{ "name": "AB_block_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_29_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_28_out", "role": "default" }} , 
 	{ "name": "AB_block_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_28_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_27_out", "role": "default" }} , 
 	{ "name": "AB_block_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_27_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_26_out", "role": "default" }} , 
 	{ "name": "AB_block_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_26_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_25_out", "role": "default" }} , 
 	{ "name": "AB_block_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_25_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_24_out", "role": "default" }} , 
 	{ "name": "AB_block_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_24_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_23_out", "role": "default" }} , 
 	{ "name": "AB_block_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_23_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_22_out", "role": "default" }} , 
 	{ "name": "AB_block_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_22_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_21_out", "role": "default" }} , 
 	{ "name": "AB_block_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_21_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_20_out", "role": "default" }} , 
 	{ "name": "AB_block_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_20_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_19_out", "role": "default" }} , 
 	{ "name": "AB_block_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_19_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_18_out", "role": "default" }} , 
 	{ "name": "AB_block_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_18_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_17_out", "role": "default" }} , 
 	{ "name": "AB_block_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_17_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_16_out", "role": "default" }} , 
 	{ "name": "AB_block_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_16_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	computeTiles_Pipeline_k_BLOCK_loop_k_loop_i_loop {
		AB_block_15 {Type I LastRead 0 FirstWrite -1}
		AB_block_14 {Type I LastRead 0 FirstWrite -1}
		AB_block_13 {Type I LastRead 0 FirstWrite -1}
		AB_block_12 {Type I LastRead 0 FirstWrite -1}
		AB_block_11 {Type I LastRead 0 FirstWrite -1}
		AB_block_10 {Type I LastRead 0 FirstWrite -1}
		AB_block_9 {Type I LastRead 0 FirstWrite -1}
		AB_block_8 {Type I LastRead 0 FirstWrite -1}
		AB_block_7 {Type I LastRead 0 FirstWrite -1}
		AB_block_6 {Type I LastRead 0 FirstWrite -1}
		AB_block_5 {Type I LastRead 0 FirstWrite -1}
		AB_block_4 {Type I LastRead 0 FirstWrite -1}
		AB_block_3 {Type I LastRead 0 FirstWrite -1}
		AB_block_2 {Type I LastRead 0 FirstWrite -1}
		AB_block_1 {Type I LastRead 0 FirstWrite -1}
		AB_block {Type I LastRead 0 FirstWrite -1}
		tmp_28 {Type I LastRead 0 FirstWrite -1}
		A_stream {Type I LastRead 2 FirstWrite -1}
		B_stream {Type I LastRead 2 FirstWrite -1}
		AB_block_31_out {Type O LastRead -1 FirstWrite 4}
		AB_block_30_out {Type O LastRead -1 FirstWrite 4}
		AB_block_29_out {Type O LastRead -1 FirstWrite 4}
		AB_block_28_out {Type O LastRead -1 FirstWrite 4}
		AB_block_27_out {Type O LastRead -1 FirstWrite 4}
		AB_block_26_out {Type O LastRead -1 FirstWrite 4}
		AB_block_25_out {Type O LastRead -1 FirstWrite 4}
		AB_block_24_out {Type O LastRead -1 FirstWrite 4}
		AB_block_23_out {Type O LastRead -1 FirstWrite 4}
		AB_block_22_out {Type O LastRead -1 FirstWrite 4}
		AB_block_21_out {Type O LastRead -1 FirstWrite 4}
		AB_block_20_out {Type O LastRead -1 FirstWrite 4}
		AB_block_19_out {Type O LastRead -1 FirstWrite 4}
		AB_block_18_out {Type O LastRead -1 FirstWrite 4}
		AB_block_17_out {Type O LastRead -1 FirstWrite 4}
		AB_block_16_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "34359738117"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "34359738113"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	AB_block_15 { ap_none {  { AB_block_15 in_data 0 512 } } }
	AB_block_14 { ap_none {  { AB_block_14 in_data 0 512 } } }
	AB_block_13 { ap_none {  { AB_block_13 in_data 0 512 } } }
	AB_block_12 { ap_none {  { AB_block_12 in_data 0 512 } } }
	AB_block_11 { ap_none {  { AB_block_11 in_data 0 512 } } }
	AB_block_10 { ap_none {  { AB_block_10 in_data 0 512 } } }
	AB_block_9 { ap_none {  { AB_block_9 in_data 0 512 } } }
	AB_block_8 { ap_none {  { AB_block_8 in_data 0 512 } } }
	AB_block_7 { ap_none {  { AB_block_7 in_data 0 512 } } }
	AB_block_6 { ap_none {  { AB_block_6 in_data 0 512 } } }
	AB_block_5 { ap_none {  { AB_block_5 in_data 0 512 } } }
	AB_block_4 { ap_none {  { AB_block_4 in_data 0 512 } } }
	AB_block_3 { ap_none {  { AB_block_3 in_data 0 512 } } }
	AB_block_2 { ap_none {  { AB_block_2 in_data 0 512 } } }
	AB_block_1 { ap_none {  { AB_block_1 in_data 0 512 } } }
	AB_block { ap_none {  { AB_block in_data 0 512 } } }
	tmp_28 { ap_none {  { tmp_28 in_data 0 35 } } }
	A_stream { ap_fifo {  { A_stream_dout fifo_data_out 0 512 }  { A_stream_empty_n fifo_status_empty 0 1 }  { A_stream_read fifo_data_in 1 1 }  { A_stream_num_data_valid fifo_update 0 6 }  { A_stream_fifo_cap fifo_data 0 6 } } }
	B_stream { ap_fifo {  { B_stream_dout fifo_data_out 0 512 }  { B_stream_empty_n fifo_status_empty 0 1 }  { B_stream_read fifo_data_in 1 1 }  { B_stream_num_data_valid fifo_update 0 6 }  { B_stream_fifo_cap fifo_data 0 6 } } }
	AB_block_31_out { ap_vld {  { AB_block_31_out out_data 1 512 }  { AB_block_31_out_ap_vld out_vld 1 1 } } }
	AB_block_30_out { ap_vld {  { AB_block_30_out out_data 1 512 }  { AB_block_30_out_ap_vld out_vld 1 1 } } }
	AB_block_29_out { ap_vld {  { AB_block_29_out out_data 1 512 }  { AB_block_29_out_ap_vld out_vld 1 1 } } }
	AB_block_28_out { ap_vld {  { AB_block_28_out out_data 1 512 }  { AB_block_28_out_ap_vld out_vld 1 1 } } }
	AB_block_27_out { ap_vld {  { AB_block_27_out out_data 1 512 }  { AB_block_27_out_ap_vld out_vld 1 1 } } }
	AB_block_26_out { ap_vld {  { AB_block_26_out out_data 1 512 }  { AB_block_26_out_ap_vld out_vld 1 1 } } }
	AB_block_25_out { ap_vld {  { AB_block_25_out out_data 1 512 }  { AB_block_25_out_ap_vld out_vld 1 1 } } }
	AB_block_24_out { ap_vld {  { AB_block_24_out out_data 1 512 }  { AB_block_24_out_ap_vld out_vld 1 1 } } }
	AB_block_23_out { ap_vld {  { AB_block_23_out out_data 1 512 }  { AB_block_23_out_ap_vld out_vld 1 1 } } }
	AB_block_22_out { ap_vld {  { AB_block_22_out out_data 1 512 }  { AB_block_22_out_ap_vld out_vld 1 1 } } }
	AB_block_21_out { ap_vld {  { AB_block_21_out out_data 1 512 }  { AB_block_21_out_ap_vld out_vld 1 1 } } }
	AB_block_20_out { ap_vld {  { AB_block_20_out out_data 1 512 }  { AB_block_20_out_ap_vld out_vld 1 1 } } }
	AB_block_19_out { ap_vld {  { AB_block_19_out out_data 1 512 }  { AB_block_19_out_ap_vld out_vld 1 1 } } }
	AB_block_18_out { ap_vld {  { AB_block_18_out out_data 1 512 }  { AB_block_18_out_ap_vld out_vld 1 1 } } }
	AB_block_17_out { ap_vld {  { AB_block_17_out out_data 1 512 }  { AB_block_17_out_ap_vld out_vld 1 1 } } }
	AB_block_16_out { ap_vld {  { AB_block_16_out out_data 1 512 }  { AB_block_16_out_ap_vld out_vld 1 1 } } }
}
