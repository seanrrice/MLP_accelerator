set moduleName writeTiles
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {writeTiles}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ AB_stream int 512 regular {fifo 0 volatile }  }
	{ gmem3 int 512 regular {axi_master 1}  }
	{ ABC int 64 regular {fifo 0}  }
	{ N int 32 regular {fifo 0}  }
	{ P int 32 regular {fifo 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "AB_stream", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "ABC","offset": { "type": "dynamic","port_name": "ABC","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "ABC", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "N", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 73
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ AB_stream_dout sc_in sc_lv 512 signal 0 } 
	{ AB_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ AB_stream_read sc_out sc_logic 1 signal 0 } 
	{ AB_stream_num_data_valid sc_in sc_lv 6 signal 0 } 
	{ AB_stream_fifo_cap sc_in sc_lv 6 signal 0 } 
	{ m_axi_gmem3_0_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem3_0_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem3_0_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem3_0_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem3_0_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem3_0_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem3_0_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem3_0_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem3_0_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem3_0_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem3_0_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem3_0_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem3_0_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem3_0_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem3_0_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem3_0_WDATA sc_out sc_lv 512 signal 1 } 
	{ m_axi_gmem3_0_WSTRB sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem3_0_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem3_0_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem3_0_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem3_0_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem3_0_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem3_0_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem3_0_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem3_0_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem3_0_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem3_0_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem3_0_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem3_0_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem3_0_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem3_0_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem3_0_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem3_0_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem3_0_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem3_0_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem3_0_RDATA sc_in sc_lv 512 signal 1 } 
	{ m_axi_gmem3_0_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem3_0_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem3_0_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_gmem3_0_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem3_0_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem3_0_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem3_0_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem3_0_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem3_0_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem3_0_BUSER sc_in sc_lv 1 signal 1 } 
	{ ABC_dout sc_in sc_lv 64 signal 2 } 
	{ ABC_empty_n sc_in sc_logic 1 signal 2 } 
	{ ABC_read sc_out sc_logic 1 signal 2 } 
	{ ABC_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ ABC_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ N_dout sc_in sc_lv 32 signal 3 } 
	{ N_empty_n sc_in sc_logic 1 signal 3 } 
	{ N_read sc_out sc_logic 1 signal 3 } 
	{ N_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ N_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ P_dout sc_in sc_lv 32 signal 4 } 
	{ P_empty_n sc_in sc_logic 1 signal 4 } 
	{ P_read sc_out sc_logic 1 signal 4 } 
	{ P_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ P_fifo_cap sc_in sc_lv 3 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "AB_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "AB_stream", "role": "dout" }} , 
 	{ "name": "AB_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_stream", "role": "empty_n" }} , 
 	{ "name": "AB_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_stream", "role": "read" }} , 
 	{ "name": "AB_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AB_stream", "role": "num_data_valid" }} , 
 	{ "name": "AB_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AB_stream", "role": "fifo_cap" }} , 
 	{ "name": "m_axi_gmem3_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem3_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem3_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem3_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem3_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem3_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem3_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem3_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem3_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem3_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem3_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem3_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem3_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem3_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem3_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem3_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem3_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem3_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem3_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem3_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem3_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem3_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem3_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem3_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem3_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem3_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem3_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem3_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem3_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem3_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem3_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem3_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem3_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem3_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem3_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem3_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem3_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem3_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem3_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem3_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem3_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem3_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem3_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem3_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem3_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem3_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_BUSER" }} , 
 	{ "name": "ABC_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ABC", "role": "dout" }} , 
 	{ "name": "ABC_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ABC", "role": "empty_n" }} , 
 	{ "name": "ABC_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ABC", "role": "read" }} , 
 	{ "name": "ABC_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ABC", "role": "num_data_valid" }} , 
 	{ "name": "ABC_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ABC", "role": "fifo_cap" }} , 
 	{ "name": "N_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "N", "role": "dout" }} , 
 	{ "name": "N_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "N", "role": "empty_n" }} , 
 	{ "name": "N_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "N", "role": "read" }} , 
 	{ "name": "N_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "N", "role": "num_data_valid" }} , 
 	{ "name": "N_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "N", "role": "fifo_cap" }} , 
 	{ "name": "P_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P", "role": "dout" }} , 
 	{ "name": "P_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P", "role": "empty_n" }} , 
 	{ "name": "P_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P", "role": "read" }} , 
 	{ "name": "P_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "P", "role": "num_data_valid" }} , 
 	{ "name": "P_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "P", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	writeTiles {
		AB_stream {Type I LastRead 5 FirstWrite -1}
		gmem3 {Type O LastRead 7 FirstWrite 6}
		ABC {Type I LastRead 0 FirstWrite -1}
		N {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}}
	writeTiles_Pipeline_i_BLOCK_loop_j_BLOCK_loop_j_output_loop {
		tmp_4 {Type I LastRead 0 FirstWrite -1}
		bound6 {Type I LastRead 0 FirstWrite -1}
		AB_stream {Type I LastRead 5 FirstWrite -1}
		N_1 {Type I LastRead 0 FirstWrite -1}
		ABC_load {Type I LastRead 0 FirstWrite -1}
		gmem3 {Type O LastRead 7 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "288230371856744479"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "288230371856744479"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	AB_stream { ap_fifo {  { AB_stream_dout fifo_data_in 0 512 }  { AB_stream_empty_n fifo_status 0 1 }  { AB_stream_read fifo_port_we 1 1 }  { AB_stream_num_data_valid fifo_status_num_data_valid 0 6 }  { AB_stream_fifo_cap fifo_update 0 6 } } }
	 { m_axi {  { m_axi_gmem3_0_AWVALID VALID 1 1 }  { m_axi_gmem3_0_AWREADY READY 0 1 }  { m_axi_gmem3_0_AWADDR ADDR 1 64 }  { m_axi_gmem3_0_AWID ID 1 1 }  { m_axi_gmem3_0_AWLEN SIZE 1 32 }  { m_axi_gmem3_0_AWSIZE BURST 1 3 }  { m_axi_gmem3_0_AWBURST LOCK 1 2 }  { m_axi_gmem3_0_AWLOCK CACHE 1 2 }  { m_axi_gmem3_0_AWCACHE PROT 1 4 }  { m_axi_gmem3_0_AWPROT QOS 1 3 }  { m_axi_gmem3_0_AWQOS REGION 1 4 }  { m_axi_gmem3_0_AWREGION USER 1 4 }  { m_axi_gmem3_0_AWUSER DATA 1 1 }  { m_axi_gmem3_0_WVALID VALID 1 1 }  { m_axi_gmem3_0_WREADY READY 0 1 }  { m_axi_gmem3_0_WDATA FIFONUM 1 512 }  { m_axi_gmem3_0_WSTRB STRB 1 64 }  { m_axi_gmem3_0_WLAST LAST 1 1 }  { m_axi_gmem3_0_WID ID 1 1 }  { m_axi_gmem3_0_WUSER DATA 1 1 }  { m_axi_gmem3_0_ARVALID VALID 1 1 }  { m_axi_gmem3_0_ARREADY READY 0 1 }  { m_axi_gmem3_0_ARADDR ADDR 1 64 }  { m_axi_gmem3_0_ARID ID 1 1 }  { m_axi_gmem3_0_ARLEN SIZE 1 32 }  { m_axi_gmem3_0_ARSIZE BURST 1 3 }  { m_axi_gmem3_0_ARBURST LOCK 1 2 }  { m_axi_gmem3_0_ARLOCK CACHE 1 2 }  { m_axi_gmem3_0_ARCACHE PROT 1 4 }  { m_axi_gmem3_0_ARPROT QOS 1 3 }  { m_axi_gmem3_0_ARQOS REGION 1 4 }  { m_axi_gmem3_0_ARREGION USER 1 4 }  { m_axi_gmem3_0_ARUSER DATA 1 1 }  { m_axi_gmem3_0_RVALID VALID 0 1 }  { m_axi_gmem3_0_RREADY READY 1 1 }  { m_axi_gmem3_0_RDATA FIFONUM 0 512 }  { m_axi_gmem3_0_RLAST LAST 0 1 }  { m_axi_gmem3_0_RID ID 0 1 }  { m_axi_gmem3_0_RFIFONUM LEN 0 9 }  { m_axi_gmem3_0_RUSER DATA 0 1 }  { m_axi_gmem3_0_RRESP RESP 0 2 }  { m_axi_gmem3_0_BVALID VALID 0 1 }  { m_axi_gmem3_0_BREADY READY 1 1 }  { m_axi_gmem3_0_BRESP RESP 0 2 }  { m_axi_gmem3_0_BID ID 0 1 }  { m_axi_gmem3_0_BUSER DATA 0 1 } } }
	ABC { ap_fifo {  { ABC_dout fifo_data_in 0 64 }  { ABC_empty_n fifo_status 0 1 }  { ABC_read fifo_port_we 1 1 }  { ABC_num_data_valid fifo_status_num_data_valid 0 3 }  { ABC_fifo_cap fifo_update 0 3 } } }
	N { ap_fifo {  { N_dout fifo_data_in 0 32 }  { N_empty_n fifo_status 0 1 }  { N_read fifo_port_we 1 1 }  { N_num_data_valid fifo_status_num_data_valid 0 3 }  { N_fifo_cap fifo_update 0 3 } } }
	P { ap_fifo {  { P_dout fifo_data_in 0 32 }  { P_empty_n fifo_status 0 1 }  { P_read fifo_port_we 1 1 }  { P_num_data_valid fifo_status_num_data_valid 0 3 }  { P_fifo_cap fifo_update 0 3 } } }
}
