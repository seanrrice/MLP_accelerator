set moduleName MM_Pipeline_i_loop
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
set cdfgNum 4
set C_modelName {MM_Pipeline_i_loop}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ AB_block_47 int 512 regular  }
	{ AB_block_46 int 512 regular  }
	{ AB_block_45 int 512 regular  }
	{ AB_block_44 int 512 regular  }
	{ AB_block_43 int 512 regular  }
	{ AB_block_42 int 512 regular  }
	{ AB_block_41 int 512 regular  }
	{ AB_block_40 int 512 regular  }
	{ AB_block_39 int 512 regular  }
	{ AB_block_38 int 512 regular  }
	{ AB_block_37 int 512 regular  }
	{ AB_block_36 int 512 regular  }
	{ AB_block_35 int 512 regular  }
	{ AB_block_34 int 512 regular  }
	{ AB_block_33 int 512 regular  }
	{ AB_block_32 int 512 regular  }
	{ A_line int 512 regular  }
	{ empty int 32 regular  }
	{ trunc_ln63_2 int 32 regular  }
	{ trunc_ln63_3 int 32 regular  }
	{ trunc_ln63_4 int 32 regular  }
	{ trunc_ln63_5 int 32 regular  }
	{ trunc_ln63_6 int 32 regular  }
	{ trunc_ln63_7 int 32 regular  }
	{ trunc_ln63_8 int 32 regular  }
	{ trunc_ln63_9 int 32 regular  }
	{ trunc_ln63_10 int 32 regular  }
	{ trunc_ln63_11 int 32 regular  }
	{ trunc_ln63_12 int 32 regular  }
	{ trunc_ln63_13 int 32 regular  }
	{ trunc_ln63_14 int 32 regular  }
	{ trunc_ln63_15 int 32 regular  }
	{ trunc_ln63_16 int 32 regular  }
	{ AB_block_63_out int 512 regular {pointer 1}  }
	{ AB_block_62_out int 512 regular {pointer 1}  }
	{ AB_block_61_out int 512 regular {pointer 1}  }
	{ AB_block_60_out int 512 regular {pointer 1}  }
	{ AB_block_59_out int 512 regular {pointer 1}  }
	{ AB_block_58_out int 512 regular {pointer 1}  }
	{ AB_block_57_out int 512 regular {pointer 1}  }
	{ AB_block_56_out int 512 regular {pointer 1}  }
	{ AB_block_55_out int 512 regular {pointer 1}  }
	{ AB_block_54_out int 512 regular {pointer 1}  }
	{ AB_block_53_out int 512 regular {pointer 1}  }
	{ AB_block_52_out int 512 regular {pointer 1}  }
	{ AB_block_51_out int 512 regular {pointer 1}  }
	{ AB_block_50_out int 512 regular {pointer 1}  }
	{ AB_block_49_out int 512 regular {pointer 1}  }
	{ AB_block_48_out int 512 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "AB_block_47", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_46", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_45", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_44", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_43", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_42", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_41", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_40", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_39", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_38", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_37", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_36", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_35", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_34", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_33", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_32", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "A_line", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln63_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln63_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln63_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln63_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln63_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln63_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln63_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln63_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln63_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln63_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln63_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln63_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln63_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln63_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln63_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_63_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_62_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_61_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_60_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_59_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_58_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_57_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_56_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_55_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_54_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_53_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_52_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_51_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_50_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_49_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_block_48_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 71
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ AB_block_47 sc_in sc_lv 512 signal 0 } 
	{ AB_block_46 sc_in sc_lv 512 signal 1 } 
	{ AB_block_45 sc_in sc_lv 512 signal 2 } 
	{ AB_block_44 sc_in sc_lv 512 signal 3 } 
	{ AB_block_43 sc_in sc_lv 512 signal 4 } 
	{ AB_block_42 sc_in sc_lv 512 signal 5 } 
	{ AB_block_41 sc_in sc_lv 512 signal 6 } 
	{ AB_block_40 sc_in sc_lv 512 signal 7 } 
	{ AB_block_39 sc_in sc_lv 512 signal 8 } 
	{ AB_block_38 sc_in sc_lv 512 signal 9 } 
	{ AB_block_37 sc_in sc_lv 512 signal 10 } 
	{ AB_block_36 sc_in sc_lv 512 signal 11 } 
	{ AB_block_35 sc_in sc_lv 512 signal 12 } 
	{ AB_block_34 sc_in sc_lv 512 signal 13 } 
	{ AB_block_33 sc_in sc_lv 512 signal 14 } 
	{ AB_block_32 sc_in sc_lv 512 signal 15 } 
	{ A_line sc_in sc_lv 512 signal 16 } 
	{ empty sc_in sc_lv 32 signal 17 } 
	{ trunc_ln63_2 sc_in sc_lv 32 signal 18 } 
	{ trunc_ln63_3 sc_in sc_lv 32 signal 19 } 
	{ trunc_ln63_4 sc_in sc_lv 32 signal 20 } 
	{ trunc_ln63_5 sc_in sc_lv 32 signal 21 } 
	{ trunc_ln63_6 sc_in sc_lv 32 signal 22 } 
	{ trunc_ln63_7 sc_in sc_lv 32 signal 23 } 
	{ trunc_ln63_8 sc_in sc_lv 32 signal 24 } 
	{ trunc_ln63_9 sc_in sc_lv 32 signal 25 } 
	{ trunc_ln63_10 sc_in sc_lv 32 signal 26 } 
	{ trunc_ln63_11 sc_in sc_lv 32 signal 27 } 
	{ trunc_ln63_12 sc_in sc_lv 32 signal 28 } 
	{ trunc_ln63_13 sc_in sc_lv 32 signal 29 } 
	{ trunc_ln63_14 sc_in sc_lv 32 signal 30 } 
	{ trunc_ln63_15 sc_in sc_lv 32 signal 31 } 
	{ trunc_ln63_16 sc_in sc_lv 32 signal 32 } 
	{ AB_block_63_out sc_out sc_lv 512 signal 33 } 
	{ AB_block_63_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ AB_block_62_out sc_out sc_lv 512 signal 34 } 
	{ AB_block_62_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ AB_block_61_out sc_out sc_lv 512 signal 35 } 
	{ AB_block_61_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ AB_block_60_out sc_out sc_lv 512 signal 36 } 
	{ AB_block_60_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ AB_block_59_out sc_out sc_lv 512 signal 37 } 
	{ AB_block_59_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ AB_block_58_out sc_out sc_lv 512 signal 38 } 
	{ AB_block_58_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ AB_block_57_out sc_out sc_lv 512 signal 39 } 
	{ AB_block_57_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ AB_block_56_out sc_out sc_lv 512 signal 40 } 
	{ AB_block_56_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ AB_block_55_out sc_out sc_lv 512 signal 41 } 
	{ AB_block_55_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ AB_block_54_out sc_out sc_lv 512 signal 42 } 
	{ AB_block_54_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ AB_block_53_out sc_out sc_lv 512 signal 43 } 
	{ AB_block_53_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ AB_block_52_out sc_out sc_lv 512 signal 44 } 
	{ AB_block_52_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ AB_block_51_out sc_out sc_lv 512 signal 45 } 
	{ AB_block_51_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ AB_block_50_out sc_out sc_lv 512 signal 46 } 
	{ AB_block_50_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ AB_block_49_out sc_out sc_lv 512 signal 47 } 
	{ AB_block_49_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ AB_block_48_out sc_out sc_lv 512 signal 48 } 
	{ AB_block_48_out_ap_vld sc_out sc_logic 1 outvld 48 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "AB_block_47", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_47", "role": "default" }} , 
 	{ "name": "AB_block_46", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_46", "role": "default" }} , 
 	{ "name": "AB_block_45", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_45", "role": "default" }} , 
 	{ "name": "AB_block_44", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_44", "role": "default" }} , 
 	{ "name": "AB_block_43", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_43", "role": "default" }} , 
 	{ "name": "AB_block_42", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_42", "role": "default" }} , 
 	{ "name": "AB_block_41", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_41", "role": "default" }} , 
 	{ "name": "AB_block_40", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_40", "role": "default" }} , 
 	{ "name": "AB_block_39", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_39", "role": "default" }} , 
 	{ "name": "AB_block_38", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_38", "role": "default" }} , 
 	{ "name": "AB_block_37", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_37", "role": "default" }} , 
 	{ "name": "AB_block_36", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_36", "role": "default" }} , 
 	{ "name": "AB_block_35", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_35", "role": "default" }} , 
 	{ "name": "AB_block_34", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_34", "role": "default" }} , 
 	{ "name": "AB_block_33", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_33", "role": "default" }} , 
 	{ "name": "AB_block_32", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_32", "role": "default" }} , 
 	{ "name": "A_line", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "A_line", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "trunc_ln63_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln63_2", "role": "default" }} , 
 	{ "name": "trunc_ln63_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln63_3", "role": "default" }} , 
 	{ "name": "trunc_ln63_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln63_4", "role": "default" }} , 
 	{ "name": "trunc_ln63_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln63_5", "role": "default" }} , 
 	{ "name": "trunc_ln63_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln63_6", "role": "default" }} , 
 	{ "name": "trunc_ln63_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln63_7", "role": "default" }} , 
 	{ "name": "trunc_ln63_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln63_8", "role": "default" }} , 
 	{ "name": "trunc_ln63_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln63_9", "role": "default" }} , 
 	{ "name": "trunc_ln63_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln63_10", "role": "default" }} , 
 	{ "name": "trunc_ln63_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln63_11", "role": "default" }} , 
 	{ "name": "trunc_ln63_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln63_12", "role": "default" }} , 
 	{ "name": "trunc_ln63_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln63_13", "role": "default" }} , 
 	{ "name": "trunc_ln63_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln63_14", "role": "default" }} , 
 	{ "name": "trunc_ln63_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln63_15", "role": "default" }} , 
 	{ "name": "trunc_ln63_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln63_16", "role": "default" }} , 
 	{ "name": "AB_block_63_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_63_out", "role": "default" }} , 
 	{ "name": "AB_block_63_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_63_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_62_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_62_out", "role": "default" }} , 
 	{ "name": "AB_block_62_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_62_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_61_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_61_out", "role": "default" }} , 
 	{ "name": "AB_block_61_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_61_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_60_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_60_out", "role": "default" }} , 
 	{ "name": "AB_block_60_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_60_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_59_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_59_out", "role": "default" }} , 
 	{ "name": "AB_block_59_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_59_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_58_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_58_out", "role": "default" }} , 
 	{ "name": "AB_block_58_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_58_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_57_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_57_out", "role": "default" }} , 
 	{ "name": "AB_block_57_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_57_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_56_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_56_out", "role": "default" }} , 
 	{ "name": "AB_block_56_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_56_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_55_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_55_out", "role": "default" }} , 
 	{ "name": "AB_block_55_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_55_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_54_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_54_out", "role": "default" }} , 
 	{ "name": "AB_block_54_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_54_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_53_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_53_out", "role": "default" }} , 
 	{ "name": "AB_block_53_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_53_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_52_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_52_out", "role": "default" }} , 
 	{ "name": "AB_block_52_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_52_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_51_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_51_out", "role": "default" }} , 
 	{ "name": "AB_block_51_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_51_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_50_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_50_out", "role": "default" }} , 
 	{ "name": "AB_block_50_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_50_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_49_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_49_out", "role": "default" }} , 
 	{ "name": "AB_block_49_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_49_out", "role": "ap_vld" }} , 
 	{ "name": "AB_block_48_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_48_out", "role": "default" }} , 
 	{ "name": "AB_block_48_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AB_block_48_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	MM_Pipeline_i_loop {
		AB_block_47 {Type I LastRead 0 FirstWrite -1}
		AB_block_46 {Type I LastRead 0 FirstWrite -1}
		AB_block_45 {Type I LastRead 0 FirstWrite -1}
		AB_block_44 {Type I LastRead 0 FirstWrite -1}
		AB_block_43 {Type I LastRead 0 FirstWrite -1}
		AB_block_42 {Type I LastRead 0 FirstWrite -1}
		AB_block_41 {Type I LastRead 0 FirstWrite -1}
		AB_block_40 {Type I LastRead 0 FirstWrite -1}
		AB_block_39 {Type I LastRead 0 FirstWrite -1}
		AB_block_38 {Type I LastRead 0 FirstWrite -1}
		AB_block_37 {Type I LastRead 0 FirstWrite -1}
		AB_block_36 {Type I LastRead 0 FirstWrite -1}
		AB_block_35 {Type I LastRead 0 FirstWrite -1}
		AB_block_34 {Type I LastRead 0 FirstWrite -1}
		AB_block_33 {Type I LastRead 0 FirstWrite -1}
		AB_block_32 {Type I LastRead 0 FirstWrite -1}
		A_line {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		trunc_ln63_2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln63_3 {Type I LastRead 0 FirstWrite -1}
		trunc_ln63_4 {Type I LastRead 0 FirstWrite -1}
		trunc_ln63_5 {Type I LastRead 0 FirstWrite -1}
		trunc_ln63_6 {Type I LastRead 0 FirstWrite -1}
		trunc_ln63_7 {Type I LastRead 0 FirstWrite -1}
		trunc_ln63_8 {Type I LastRead 0 FirstWrite -1}
		trunc_ln63_9 {Type I LastRead 0 FirstWrite -1}
		trunc_ln63_10 {Type I LastRead 0 FirstWrite -1}
		trunc_ln63_11 {Type I LastRead 0 FirstWrite -1}
		trunc_ln63_12 {Type I LastRead 0 FirstWrite -1}
		trunc_ln63_13 {Type I LastRead 0 FirstWrite -1}
		trunc_ln63_14 {Type I LastRead 0 FirstWrite -1}
		trunc_ln63_15 {Type I LastRead 0 FirstWrite -1}
		trunc_ln63_16 {Type I LastRead 0 FirstWrite -1}
		AB_block_63_out {Type O LastRead -1 FirstWrite 1}
		AB_block_62_out {Type O LastRead -1 FirstWrite 1}
		AB_block_61_out {Type O LastRead -1 FirstWrite 1}
		AB_block_60_out {Type O LastRead -1 FirstWrite 1}
		AB_block_59_out {Type O LastRead -1 FirstWrite 1}
		AB_block_58_out {Type O LastRead -1 FirstWrite 1}
		AB_block_57_out {Type O LastRead -1 FirstWrite 1}
		AB_block_56_out {Type O LastRead -1 FirstWrite 1}
		AB_block_55_out {Type O LastRead -1 FirstWrite 1}
		AB_block_54_out {Type O LastRead -1 FirstWrite 1}
		AB_block_53_out {Type O LastRead -1 FirstWrite 1}
		AB_block_52_out {Type O LastRead -1 FirstWrite 1}
		AB_block_51_out {Type O LastRead -1 FirstWrite 1}
		AB_block_50_out {Type O LastRead -1 FirstWrite 1}
		AB_block_49_out {Type O LastRead -1 FirstWrite 1}
		AB_block_48_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19", "Max" : "19"}
	, {"Name" : "Interval", "Min" : "17", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	AB_block_47 { ap_none {  { AB_block_47 in_data 0 512 } } }
	AB_block_46 { ap_none {  { AB_block_46 in_data 0 512 } } }
	AB_block_45 { ap_none {  { AB_block_45 in_data 0 512 } } }
	AB_block_44 { ap_none {  { AB_block_44 in_data 0 512 } } }
	AB_block_43 { ap_none {  { AB_block_43 in_data 0 512 } } }
	AB_block_42 { ap_none {  { AB_block_42 in_data 0 512 } } }
	AB_block_41 { ap_none {  { AB_block_41 in_data 0 512 } } }
	AB_block_40 { ap_none {  { AB_block_40 in_data 0 512 } } }
	AB_block_39 { ap_none {  { AB_block_39 in_data 0 512 } } }
	AB_block_38 { ap_none {  { AB_block_38 in_data 0 512 } } }
	AB_block_37 { ap_none {  { AB_block_37 in_data 0 512 } } }
	AB_block_36 { ap_none {  { AB_block_36 in_data 0 512 } } }
	AB_block_35 { ap_none {  { AB_block_35 in_data 0 512 } } }
	AB_block_34 { ap_none {  { AB_block_34 in_data 0 512 } } }
	AB_block_33 { ap_none {  { AB_block_33 in_data 0 512 } } }
	AB_block_32 { ap_none {  { AB_block_32 in_data 0 512 } } }
	A_line { ap_none {  { A_line in_data 0 512 } } }
	empty { ap_none {  { empty in_data 0 32 } } }
	trunc_ln63_2 { ap_none {  { trunc_ln63_2 in_data 0 32 } } }
	trunc_ln63_3 { ap_none {  { trunc_ln63_3 in_data 0 32 } } }
	trunc_ln63_4 { ap_none {  { trunc_ln63_4 in_data 0 32 } } }
	trunc_ln63_5 { ap_none {  { trunc_ln63_5 in_data 0 32 } } }
	trunc_ln63_6 { ap_none {  { trunc_ln63_6 in_data 0 32 } } }
	trunc_ln63_7 { ap_none {  { trunc_ln63_7 in_data 0 32 } } }
	trunc_ln63_8 { ap_none {  { trunc_ln63_8 in_data 0 32 } } }
	trunc_ln63_9 { ap_none {  { trunc_ln63_9 in_data 0 32 } } }
	trunc_ln63_10 { ap_none {  { trunc_ln63_10 in_data 0 32 } } }
	trunc_ln63_11 { ap_none {  { trunc_ln63_11 in_data 0 32 } } }
	trunc_ln63_12 { ap_none {  { trunc_ln63_12 in_data 0 32 } } }
	trunc_ln63_13 { ap_none {  { trunc_ln63_13 in_data 0 32 } } }
	trunc_ln63_14 { ap_none {  { trunc_ln63_14 in_data 0 32 } } }
	trunc_ln63_15 { ap_none {  { trunc_ln63_15 in_data 0 32 } } }
	trunc_ln63_16 { ap_none {  { trunc_ln63_16 in_data 0 32 } } }
	AB_block_63_out { ap_vld {  { AB_block_63_out out_data 1 512 }  { AB_block_63_out_ap_vld out_vld 1 1 } } }
	AB_block_62_out { ap_vld {  { AB_block_62_out out_data 1 512 }  { AB_block_62_out_ap_vld out_vld 1 1 } } }
	AB_block_61_out { ap_vld {  { AB_block_61_out out_data 1 512 }  { AB_block_61_out_ap_vld out_vld 1 1 } } }
	AB_block_60_out { ap_vld {  { AB_block_60_out out_data 1 512 }  { AB_block_60_out_ap_vld out_vld 1 1 } } }
	AB_block_59_out { ap_vld {  { AB_block_59_out out_data 1 512 }  { AB_block_59_out_ap_vld out_vld 1 1 } } }
	AB_block_58_out { ap_vld {  { AB_block_58_out out_data 1 512 }  { AB_block_58_out_ap_vld out_vld 1 1 } } }
	AB_block_57_out { ap_vld {  { AB_block_57_out out_data 1 512 }  { AB_block_57_out_ap_vld out_vld 1 1 } } }
	AB_block_56_out { ap_vld {  { AB_block_56_out out_data 1 512 }  { AB_block_56_out_ap_vld out_vld 1 1 } } }
	AB_block_55_out { ap_vld {  { AB_block_55_out out_data 1 512 }  { AB_block_55_out_ap_vld out_vld 1 1 } } }
	AB_block_54_out { ap_vld {  { AB_block_54_out out_data 1 512 }  { AB_block_54_out_ap_vld out_vld 1 1 } } }
	AB_block_53_out { ap_vld {  { AB_block_53_out out_data 1 512 }  { AB_block_53_out_ap_vld out_vld 1 1 } } }
	AB_block_52_out { ap_vld {  { AB_block_52_out out_data 1 512 }  { AB_block_52_out_ap_vld out_vld 1 1 } } }
	AB_block_51_out { ap_vld {  { AB_block_51_out out_data 1 512 }  { AB_block_51_out_ap_vld out_vld 1 1 } } }
	AB_block_50_out { ap_vld {  { AB_block_50_out out_data 1 512 }  { AB_block_50_out_ap_vld out_vld 1 1 } } }
	AB_block_49_out { ap_vld {  { AB_block_49_out out_data 1 512 }  { AB_block_49_out_ap_vld out_vld 1 1 } } }
	AB_block_48_out { ap_vld {  { AB_block_48_out out_data 1 512 }  { AB_block_48_out_ap_vld out_vld 1 1 } } }
}
