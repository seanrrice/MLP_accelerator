set moduleName MM_Pipeline_i_loop
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
set cdfgNum 4
set C_modelName {MM_Pipeline_i_loop}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ AB_block_15_1 int 512 regular  }
	{ AB_block_14_1 int 512 regular  }
	{ AB_block_13_1 int 512 regular  }
	{ AB_block_12_1 int 512 regular  }
	{ AB_block_11_1 int 512 regular  }
	{ AB_block_10_1 int 512 regular  }
	{ AB_block_9_1 int 512 regular  }
	{ AB_block_8_1 int 512 regular  }
	{ AB_block_7_1 int 512 regular  }
	{ AB_block_6_1 int 512 regular  }
	{ AB_block_5_1 int 512 regular  }
	{ AB_block_4_1 int 512 regular  }
	{ AB_block_3_1 int 512 regular  }
	{ AB_block_2_1 int 512 regular  }
	{ AB_block_1_1 int 512 regular  }
	{ AB_block_0_1 int 512 regular  }
	{ gmem_load_17 int 512 regular  }
	{ empty int 32 regular  }
	{ trunc_ln66_1 int 32 regular  }
	{ trunc_ln66_2 int 32 regular  }
	{ trunc_ln66_3 int 32 regular  }
	{ trunc_ln66_4 int 32 regular  }
	{ trunc_ln66_5 int 32 regular  }
	{ trunc_ln66_6 int 32 regular  }
	{ trunc_ln66_7 int 32 regular  }
	{ trunc_ln66_8 int 32 regular  }
	{ trunc_ln66_9 int 32 regular  }
	{ trunc_ln66_10 int 32 regular  }
	{ trunc_ln66_11 int 32 regular  }
	{ trunc_ln66_12 int 32 regular  }
	{ trunc_ln66_13 int 32 regular  }
	{ trunc_ln66_14 int 32 regular  }
	{ trunc_ln66_15 int 32 regular  }
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
	{ "Name" : "AB_block_15_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_14_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_13_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_12_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_11_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_10_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_9_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_8_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_7_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_6_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_5_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_4_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_3_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_2_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_1_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_0_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_load_17", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln66_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln66_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln66_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln66_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln66_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln66_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln66_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln66_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln66_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln66_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln66_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln66_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln66_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln66_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln66_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
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
set portNum 71
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ AB_block_15_1 sc_in sc_lv 512 signal 0 } 
	{ AB_block_14_1 sc_in sc_lv 512 signal 1 } 
	{ AB_block_13_1 sc_in sc_lv 512 signal 2 } 
	{ AB_block_12_1 sc_in sc_lv 512 signal 3 } 
	{ AB_block_11_1 sc_in sc_lv 512 signal 4 } 
	{ AB_block_10_1 sc_in sc_lv 512 signal 5 } 
	{ AB_block_9_1 sc_in sc_lv 512 signal 6 } 
	{ AB_block_8_1 sc_in sc_lv 512 signal 7 } 
	{ AB_block_7_1 sc_in sc_lv 512 signal 8 } 
	{ AB_block_6_1 sc_in sc_lv 512 signal 9 } 
	{ AB_block_5_1 sc_in sc_lv 512 signal 10 } 
	{ AB_block_4_1 sc_in sc_lv 512 signal 11 } 
	{ AB_block_3_1 sc_in sc_lv 512 signal 12 } 
	{ AB_block_2_1 sc_in sc_lv 512 signal 13 } 
	{ AB_block_1_1 sc_in sc_lv 512 signal 14 } 
	{ AB_block_0_1 sc_in sc_lv 512 signal 15 } 
	{ gmem_load_17 sc_in sc_lv 512 signal 16 } 
	{ empty sc_in sc_lv 32 signal 17 } 
	{ trunc_ln66_1 sc_in sc_lv 32 signal 18 } 
	{ trunc_ln66_2 sc_in sc_lv 32 signal 19 } 
	{ trunc_ln66_3 sc_in sc_lv 32 signal 20 } 
	{ trunc_ln66_4 sc_in sc_lv 32 signal 21 } 
	{ trunc_ln66_5 sc_in sc_lv 32 signal 22 } 
	{ trunc_ln66_6 sc_in sc_lv 32 signal 23 } 
	{ trunc_ln66_7 sc_in sc_lv 32 signal 24 } 
	{ trunc_ln66_8 sc_in sc_lv 32 signal 25 } 
	{ trunc_ln66_9 sc_in sc_lv 32 signal 26 } 
	{ trunc_ln66_10 sc_in sc_lv 32 signal 27 } 
	{ trunc_ln66_11 sc_in sc_lv 32 signal 28 } 
	{ trunc_ln66_12 sc_in sc_lv 32 signal 29 } 
	{ trunc_ln66_13 sc_in sc_lv 32 signal 30 } 
	{ trunc_ln66_14 sc_in sc_lv 32 signal 31 } 
	{ trunc_ln66_15 sc_in sc_lv 32 signal 32 } 
	{ AB_block_15_2_out sc_out sc_lv 512 signal 33 } 
	{ AB_block_15_2_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ AB_block_14_2_out sc_out sc_lv 512 signal 34 } 
	{ AB_block_14_2_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ AB_block_13_2_out sc_out sc_lv 512 signal 35 } 
	{ AB_block_13_2_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ AB_block_12_2_out sc_out sc_lv 512 signal 36 } 
	{ AB_block_12_2_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ AB_block_11_2_out sc_out sc_lv 512 signal 37 } 
	{ AB_block_11_2_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ AB_block_10_2_out sc_out sc_lv 512 signal 38 } 
	{ AB_block_10_2_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ AB_block_9_2_out sc_out sc_lv 512 signal 39 } 
	{ AB_block_9_2_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ AB_block_8_2_out sc_out sc_lv 512 signal 40 } 
	{ AB_block_8_2_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ AB_block_7_2_out sc_out sc_lv 512 signal 41 } 
	{ AB_block_7_2_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ AB_block_6_2_out sc_out sc_lv 512 signal 42 } 
	{ AB_block_6_2_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ AB_block_5_2_out sc_out sc_lv 512 signal 43 } 
	{ AB_block_5_2_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ AB_block_4_2_out sc_out sc_lv 512 signal 44 } 
	{ AB_block_4_2_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ AB_block_3_2_out sc_out sc_lv 512 signal 45 } 
	{ AB_block_3_2_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ AB_block_2_2_out sc_out sc_lv 512 signal 46 } 
	{ AB_block_2_2_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ AB_block_1_2_out sc_out sc_lv 512 signal 47 } 
	{ AB_block_1_2_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ AB_block_0_2_out sc_out sc_lv 512 signal 48 } 
	{ AB_block_0_2_out_ap_vld sc_out sc_logic 1 outvld 48 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "AB_block_15_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_15_1", "role": "default" }} , 
 	{ "name": "AB_block_14_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_14_1", "role": "default" }} , 
 	{ "name": "AB_block_13_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_13_1", "role": "default" }} , 
 	{ "name": "AB_block_12_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_12_1", "role": "default" }} , 
 	{ "name": "AB_block_11_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_11_1", "role": "default" }} , 
 	{ "name": "AB_block_10_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_10_1", "role": "default" }} , 
 	{ "name": "AB_block_9_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_9_1", "role": "default" }} , 
 	{ "name": "AB_block_8_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_8_1", "role": "default" }} , 
 	{ "name": "AB_block_7_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_7_1", "role": "default" }} , 
 	{ "name": "AB_block_6_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_6_1", "role": "default" }} , 
 	{ "name": "AB_block_5_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_5_1", "role": "default" }} , 
 	{ "name": "AB_block_4_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_4_1", "role": "default" }} , 
 	{ "name": "AB_block_3_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_3_1", "role": "default" }} , 
 	{ "name": "AB_block_2_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_2_1", "role": "default" }} , 
 	{ "name": "AB_block_1_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_1_1", "role": "default" }} , 
 	{ "name": "AB_block_0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_0_1", "role": "default" }} , 
 	{ "name": "gmem_load_17", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_load_17", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "trunc_ln66_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln66_1", "role": "default" }} , 
 	{ "name": "trunc_ln66_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln66_2", "role": "default" }} , 
 	{ "name": "trunc_ln66_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln66_3", "role": "default" }} , 
 	{ "name": "trunc_ln66_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln66_4", "role": "default" }} , 
 	{ "name": "trunc_ln66_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln66_5", "role": "default" }} , 
 	{ "name": "trunc_ln66_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln66_6", "role": "default" }} , 
 	{ "name": "trunc_ln66_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln66_7", "role": "default" }} , 
 	{ "name": "trunc_ln66_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln66_8", "role": "default" }} , 
 	{ "name": "trunc_ln66_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln66_9", "role": "default" }} , 
 	{ "name": "trunc_ln66_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln66_10", "role": "default" }} , 
 	{ "name": "trunc_ln66_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln66_11", "role": "default" }} , 
 	{ "name": "trunc_ln66_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln66_12", "role": "default" }} , 
 	{ "name": "trunc_ln66_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln66_13", "role": "default" }} , 
 	{ "name": "trunc_ln66_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln66_14", "role": "default" }} , 
 	{ "name": "trunc_ln66_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln66_15", "role": "default" }} , 
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
	MM_Pipeline_i_loop {
		AB_block_15_1 {Type I LastRead 0 FirstWrite -1}
		AB_block_14_1 {Type I LastRead 0 FirstWrite -1}
		AB_block_13_1 {Type I LastRead 0 FirstWrite -1}
		AB_block_12_1 {Type I LastRead 0 FirstWrite -1}
		AB_block_11_1 {Type I LastRead 0 FirstWrite -1}
		AB_block_10_1 {Type I LastRead 0 FirstWrite -1}
		AB_block_9_1 {Type I LastRead 0 FirstWrite -1}
		AB_block_8_1 {Type I LastRead 0 FirstWrite -1}
		AB_block_7_1 {Type I LastRead 0 FirstWrite -1}
		AB_block_6_1 {Type I LastRead 0 FirstWrite -1}
		AB_block_5_1 {Type I LastRead 0 FirstWrite -1}
		AB_block_4_1 {Type I LastRead 0 FirstWrite -1}
		AB_block_3_1 {Type I LastRead 0 FirstWrite -1}
		AB_block_2_1 {Type I LastRead 0 FirstWrite -1}
		AB_block_1_1 {Type I LastRead 0 FirstWrite -1}
		AB_block_0_1 {Type I LastRead 0 FirstWrite -1}
		gmem_load_17 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		trunc_ln66_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln66_2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln66_3 {Type I LastRead 0 FirstWrite -1}
		trunc_ln66_4 {Type I LastRead 0 FirstWrite -1}
		trunc_ln66_5 {Type I LastRead 0 FirstWrite -1}
		trunc_ln66_6 {Type I LastRead 0 FirstWrite -1}
		trunc_ln66_7 {Type I LastRead 0 FirstWrite -1}
		trunc_ln66_8 {Type I LastRead 0 FirstWrite -1}
		trunc_ln66_9 {Type I LastRead 0 FirstWrite -1}
		trunc_ln66_10 {Type I LastRead 0 FirstWrite -1}
		trunc_ln66_11 {Type I LastRead 0 FirstWrite -1}
		trunc_ln66_12 {Type I LastRead 0 FirstWrite -1}
		trunc_ln66_13 {Type I LastRead 0 FirstWrite -1}
		trunc_ln66_14 {Type I LastRead 0 FirstWrite -1}
		trunc_ln66_15 {Type I LastRead 0 FirstWrite -1}
		AB_block_15_2_out {Type O LastRead -1 FirstWrite 1}
		AB_block_14_2_out {Type O LastRead -1 FirstWrite 1}
		AB_block_13_2_out {Type O LastRead -1 FirstWrite 1}
		AB_block_12_2_out {Type O LastRead -1 FirstWrite 1}
		AB_block_11_2_out {Type O LastRead -1 FirstWrite 1}
		AB_block_10_2_out {Type O LastRead -1 FirstWrite 1}
		AB_block_9_2_out {Type O LastRead -1 FirstWrite 1}
		AB_block_8_2_out {Type O LastRead -1 FirstWrite 1}
		AB_block_7_2_out {Type O LastRead -1 FirstWrite 1}
		AB_block_6_2_out {Type O LastRead -1 FirstWrite 1}
		AB_block_5_2_out {Type O LastRead -1 FirstWrite 1}
		AB_block_4_2_out {Type O LastRead -1 FirstWrite 1}
		AB_block_3_2_out {Type O LastRead -1 FirstWrite 1}
		AB_block_2_2_out {Type O LastRead -1 FirstWrite 1}
		AB_block_1_2_out {Type O LastRead -1 FirstWrite 1}
		AB_block_0_2_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19", "Max" : "19"}
	, {"Name" : "Interval", "Min" : "19", "Max" : "19"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	AB_block_15_1 { ap_none {  { AB_block_15_1 in_data 0 512 } } }
	AB_block_14_1 { ap_none {  { AB_block_14_1 in_data 0 512 } } }
	AB_block_13_1 { ap_none {  { AB_block_13_1 in_data 0 512 } } }
	AB_block_12_1 { ap_none {  { AB_block_12_1 in_data 0 512 } } }
	AB_block_11_1 { ap_none {  { AB_block_11_1 in_data 0 512 } } }
	AB_block_10_1 { ap_none {  { AB_block_10_1 in_data 0 512 } } }
	AB_block_9_1 { ap_none {  { AB_block_9_1 in_data 0 512 } } }
	AB_block_8_1 { ap_none {  { AB_block_8_1 in_data 0 512 } } }
	AB_block_7_1 { ap_none {  { AB_block_7_1 in_data 0 512 } } }
	AB_block_6_1 { ap_none {  { AB_block_6_1 in_data 0 512 } } }
	AB_block_5_1 { ap_none {  { AB_block_5_1 in_data 0 512 } } }
	AB_block_4_1 { ap_none {  { AB_block_4_1 in_data 0 512 } } }
	AB_block_3_1 { ap_none {  { AB_block_3_1 in_data 0 512 } } }
	AB_block_2_1 { ap_none {  { AB_block_2_1 in_data 0 512 } } }
	AB_block_1_1 { ap_none {  { AB_block_1_1 in_data 0 512 } } }
	AB_block_0_1 { ap_none {  { AB_block_0_1 in_data 0 512 } } }
	gmem_load_17 { ap_none {  { gmem_load_17 in_data 0 512 } } }
	empty { ap_none {  { empty in_data 0 32 } } }
	trunc_ln66_1 { ap_none {  { trunc_ln66_1 in_data 0 32 } } }
	trunc_ln66_2 { ap_none {  { trunc_ln66_2 in_data 0 32 } } }
	trunc_ln66_3 { ap_none {  { trunc_ln66_3 in_data 0 32 } } }
	trunc_ln66_4 { ap_none {  { trunc_ln66_4 in_data 0 32 } } }
	trunc_ln66_5 { ap_none {  { trunc_ln66_5 in_data 0 32 } } }
	trunc_ln66_6 { ap_none {  { trunc_ln66_6 in_data 0 32 } } }
	trunc_ln66_7 { ap_none {  { trunc_ln66_7 in_data 0 32 } } }
	trunc_ln66_8 { ap_none {  { trunc_ln66_8 in_data 0 32 } } }
	trunc_ln66_9 { ap_none {  { trunc_ln66_9 in_data 0 32 } } }
	trunc_ln66_10 { ap_none {  { trunc_ln66_10 in_data 0 32 } } }
	trunc_ln66_11 { ap_none {  { trunc_ln66_11 in_data 0 32 } } }
	trunc_ln66_12 { ap_none {  { trunc_ln66_12 in_data 0 32 } } }
	trunc_ln66_13 { ap_none {  { trunc_ln66_13 in_data 0 32 } } }
	trunc_ln66_14 { ap_none {  { trunc_ln66_14 in_data 0 32 } } }
	trunc_ln66_15 { ap_none {  { trunc_ln66_15 in_data 0 32 } } }
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
