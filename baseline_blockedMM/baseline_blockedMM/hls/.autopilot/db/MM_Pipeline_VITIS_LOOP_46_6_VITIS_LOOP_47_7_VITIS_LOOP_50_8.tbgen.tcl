set moduleName MM_Pipeline_VITIS_LOOP_46_6_VITIS_LOOP_47_7_VITIS_LOOP_50_8
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
set cdfgNum 5
set C_modelName {MM_Pipeline_VITIS_LOOP_46_6_VITIS_LOOP_47_7_VITIS_LOOP_50_8}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ zext_ln41_3 int 31 regular  }
	{ zext_ln42 int 31 regular  }
	{ zext_ln43 int 31 regular  }
	{ gmem int 32 regular {axi_master 2}  }
	{ mul_ln43_1 int 192 regular  }
	{ mul_ln43 int 128 regular  }
	{ sext_ln43_3 int 34 regular  }
	{ sext_ln41 int 32 regular  }
	{ P_cast8 int 32 regular  }
	{ ABC int 64 regular  }
	{ A int 64 regular  }
	{ B int 64 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln41_3", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln42", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln43", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "A","offset": { "type": "dynamic","port_name": "A","bundle": "control"},"direction": "READONLY"},{"cName": "B","offset": { "type": "dynamic","port_name": "B","bundle": "control"},"direction": "READONLY"},{"cName": "C","offset": { "type": "dynamic","port_name": "C","bundle": "control"},"direction": "READONLY"},{"cName": "ABC","offset": { "type": "dynamic","port_name": "ABC","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "mul_ln43_1", "interface" : "wire", "bitwidth" : 192, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln43", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln43_3", "interface" : "wire", "bitwidth" : 34, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln41", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_cast8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ABC", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 63
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem_0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem_0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 3 } 
	{ zext_ln41_3 sc_in sc_lv 31 signal 0 } 
	{ zext_ln42 sc_in sc_lv 31 signal 1 } 
	{ zext_ln43 sc_in sc_lv 31 signal 2 } 
	{ mul_ln43_1 sc_in sc_lv 192 signal 4 } 
	{ mul_ln43 sc_in sc_lv 128 signal 5 } 
	{ sext_ln43_3 sc_in sc_lv 34 signal 6 } 
	{ sext_ln41 sc_in sc_lv 32 signal 7 } 
	{ P_cast8 sc_in sc_lv 32 signal 8 } 
	{ ABC sc_in sc_lv 64 signal 9 } 
	{ A sc_in sc_lv 64 signal 10 } 
	{ B sc_in sc_lv 64 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BUSER" }} , 
 	{ "name": "zext_ln41_3", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "zext_ln41_3", "role": "default" }} , 
 	{ "name": "zext_ln42", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "zext_ln42", "role": "default" }} , 
 	{ "name": "zext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "zext_ln43", "role": "default" }} , 
 	{ "name": "mul_ln43_1", "direction": "in", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "mul_ln43_1", "role": "default" }} , 
 	{ "name": "mul_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "mul_ln43", "role": "default" }} , 
 	{ "name": "sext_ln43_3", "direction": "in", "datatype": "sc_lv", "bitwidth":34, "type": "signal", "bundle":{"name": "sext_ln43_3", "role": "default" }} , 
 	{ "name": "sext_ln41", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln41", "role": "default" }} , 
 	{ "name": "P_cast8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_cast8", "role": "default" }} , 
 	{ "name": "ABC", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ABC", "role": "default" }} , 
 	{ "name": "A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "default" }} , 
 	{ "name": "B", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	MM_Pipeline_VITIS_LOOP_46_6_VITIS_LOOP_47_7_VITIS_LOOP_50_8 {
		zext_ln41_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln42 {Type I LastRead 0 FirstWrite -1}
		zext_ln43 {Type I LastRead 0 FirstWrite -1}
		gmem {Type IO LastRead 22 FirstWrite 21}
		mul_ln43_1 {Type I LastRead 0 FirstWrite -1}
		mul_ln43 {Type I LastRead 0 FirstWrite -1}
		sext_ln43_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln41 {Type I LastRead 0 FirstWrite -1}
		P_cast8 {Type I LastRead 0 FirstWrite -1}
		ABC {Type I LastRead 0 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln41_3 { ap_none {  { zext_ln41_3 in_data 0 31 } } }
	zext_ln42 { ap_none {  { zext_ln42 in_data 0 31 } } }
	zext_ln43 { ap_none {  { zext_ln43 in_data 0 31 } } }
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	mul_ln43_1 { ap_none {  { mul_ln43_1 in_data 0 192 } } }
	mul_ln43 { ap_none {  { mul_ln43 in_data 0 128 } } }
	sext_ln43_3 { ap_none {  { sext_ln43_3 in_data 0 34 } } }
	sext_ln41 { ap_none {  { sext_ln41 in_data 0 32 } } }
	P_cast8 { ap_none {  { P_cast8 in_data 0 32 } } }
	ABC { ap_none {  { ABC in_data 0 64 } } }
	A { ap_none {  { A in_data 0 64 } } }
	B { ap_none {  { B in_data 0 64 } } }
}
