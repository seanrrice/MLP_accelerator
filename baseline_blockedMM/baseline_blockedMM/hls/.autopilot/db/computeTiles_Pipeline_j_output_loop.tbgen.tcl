set moduleName computeTiles_Pipeline_j_output_loop
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
set C_modelName {computeTiles_Pipeline_j_output_loop}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ AB_block_0_2_reload int 512 regular  }
	{ AB_block_1_2_reload int 512 regular  }
	{ AB_block_2_2_reload int 512 regular  }
	{ AB_block_3_2_reload int 512 regular  }
	{ AB_block_4_2_reload int 512 regular  }
	{ AB_block_5_2_reload int 512 regular  }
	{ AB_block_6_2_reload int 512 regular  }
	{ AB_block_7_2_reload int 512 regular  }
	{ AB_block_8_2_reload int 512 regular  }
	{ AB_block_9_2_reload int 512 regular  }
	{ AB_block_10_2_reload int 512 regular  }
	{ AB_block_11_2_reload int 512 regular  }
	{ AB_block_12_2_reload int 512 regular  }
	{ AB_block_13_2_reload int 512 regular  }
	{ AB_block_14_2_reload int 512 regular  }
	{ AB_block_15_2_reload int 512 regular  }
	{ AB_stream int 512 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "AB_block_0_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_1_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_2_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_3_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_4_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_5_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_6_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_7_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_8_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_9_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_10_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_11_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_12_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_13_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_14_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_block_15_2_reload", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "AB_stream", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ AB_stream_din sc_out sc_lv 512 signal 16 } 
	{ AB_stream_full_n sc_in sc_logic 1 signal 16 } 
	{ AB_stream_write sc_out sc_logic 1 signal 16 } 
	{ AB_stream_num_data_valid sc_in sc_lv 32 signal 16 } 
	{ AB_stream_fifo_cap sc_in sc_lv 32 signal 16 } 
	{ AB_block_0_2_reload sc_in sc_lv 512 signal 0 } 
	{ AB_block_1_2_reload sc_in sc_lv 512 signal 1 } 
	{ AB_block_2_2_reload sc_in sc_lv 512 signal 2 } 
	{ AB_block_3_2_reload sc_in sc_lv 512 signal 3 } 
	{ AB_block_4_2_reload sc_in sc_lv 512 signal 4 } 
	{ AB_block_5_2_reload sc_in sc_lv 512 signal 5 } 
	{ AB_block_6_2_reload sc_in sc_lv 512 signal 6 } 
	{ AB_block_7_2_reload sc_in sc_lv 512 signal 7 } 
	{ AB_block_8_2_reload sc_in sc_lv 512 signal 8 } 
	{ AB_block_9_2_reload sc_in sc_lv 512 signal 9 } 
	{ AB_block_10_2_reload sc_in sc_lv 512 signal 10 } 
	{ AB_block_11_2_reload sc_in sc_lv 512 signal 11 } 
	{ AB_block_12_2_reload sc_in sc_lv 512 signal 12 } 
	{ AB_block_13_2_reload sc_in sc_lv 512 signal 13 } 
	{ AB_block_14_2_reload sc_in sc_lv 512 signal 14 } 
	{ AB_block_15_2_reload sc_in sc_lv 512 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "AB_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_stream", "role": "din" }} , 
 	{ "name": "AB_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_stream", "role": "full_n" }} , 
 	{ "name": "AB_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_stream", "role": "write" }} , 
 	{ "name": "AB_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_stream", "role": "num_data_valid" }} , 
 	{ "name": "AB_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_stream", "role": "fifo_cap" }} , 
 	{ "name": "AB_block_0_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_0_2_reload", "role": "default" }} , 
 	{ "name": "AB_block_1_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_1_2_reload", "role": "default" }} , 
 	{ "name": "AB_block_2_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_2_2_reload", "role": "default" }} , 
 	{ "name": "AB_block_3_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_3_2_reload", "role": "default" }} , 
 	{ "name": "AB_block_4_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_4_2_reload", "role": "default" }} , 
 	{ "name": "AB_block_5_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_5_2_reload", "role": "default" }} , 
 	{ "name": "AB_block_6_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_6_2_reload", "role": "default" }} , 
 	{ "name": "AB_block_7_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_7_2_reload", "role": "default" }} , 
 	{ "name": "AB_block_8_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_8_2_reload", "role": "default" }} , 
 	{ "name": "AB_block_9_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_9_2_reload", "role": "default" }} , 
 	{ "name": "AB_block_10_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_10_2_reload", "role": "default" }} , 
 	{ "name": "AB_block_11_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_11_2_reload", "role": "default" }} , 
 	{ "name": "AB_block_12_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_12_2_reload", "role": "default" }} , 
 	{ "name": "AB_block_13_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_13_2_reload", "role": "default" }} , 
 	{ "name": "AB_block_14_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_14_2_reload", "role": "default" }} , 
 	{ "name": "AB_block_15_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_block_15_2_reload", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	computeTiles_Pipeline_j_output_loop {
		AB_block_0_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_block_1_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_block_2_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_block_3_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_block_4_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_block_5_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_block_6_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_block_7_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_block_8_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_block_9_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_block_10_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_block_11_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_block_12_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_block_13_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_block_14_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_block_15_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_stream {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	AB_block_0_2_reload { ap_none {  { AB_block_0_2_reload in_data 0 512 } } }
	AB_block_1_2_reload { ap_none {  { AB_block_1_2_reload in_data 0 512 } } }
	AB_block_2_2_reload { ap_none {  { AB_block_2_2_reload in_data 0 512 } } }
	AB_block_3_2_reload { ap_none {  { AB_block_3_2_reload in_data 0 512 } } }
	AB_block_4_2_reload { ap_none {  { AB_block_4_2_reload in_data 0 512 } } }
	AB_block_5_2_reload { ap_none {  { AB_block_5_2_reload in_data 0 512 } } }
	AB_block_6_2_reload { ap_none {  { AB_block_6_2_reload in_data 0 512 } } }
	AB_block_7_2_reload { ap_none {  { AB_block_7_2_reload in_data 0 512 } } }
	AB_block_8_2_reload { ap_none {  { AB_block_8_2_reload in_data 0 512 } } }
	AB_block_9_2_reload { ap_none {  { AB_block_9_2_reload in_data 0 512 } } }
	AB_block_10_2_reload { ap_none {  { AB_block_10_2_reload in_data 0 512 } } }
	AB_block_11_2_reload { ap_none {  { AB_block_11_2_reload in_data 0 512 } } }
	AB_block_12_2_reload { ap_none {  { AB_block_12_2_reload in_data 0 512 } } }
	AB_block_13_2_reload { ap_none {  { AB_block_13_2_reload in_data 0 512 } } }
	AB_block_14_2_reload { ap_none {  { AB_block_14_2_reload in_data 0 512 } } }
	AB_block_15_2_reload { ap_none {  { AB_block_15_2_reload in_data 0 512 } } }
	AB_stream { ap_fifo {  { AB_stream_din fifo_data_in 1 512 }  { AB_stream_full_n fifo_status 0 1 }  { AB_stream_write fifo_port_we 1 1 }  { AB_stream_num_data_valid fifo_status_num_data_valid 0 32 }  { AB_stream_fifo_cap fifo_update 0 32 } } }
}
