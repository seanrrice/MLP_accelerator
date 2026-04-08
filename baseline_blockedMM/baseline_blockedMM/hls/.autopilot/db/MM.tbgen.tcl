set moduleName MM
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {MM}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem int 32 regular {axi_master 2}  }
	{ A int 64 regular {axi_slave 0}  }
	{ B int 64 regular {axi_slave 0}  }
	{ C int 64 regular {axi_slave 0}  }
	{ ABC int 64 regular {axi_slave 0}  }
	{ N int 32 regular {axi_slave 0}  }
	{ M int 32 regular {axi_slave 0}  }
	{ P int 32 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "A","offset": { "type": "dynamic","port_name": "A","bundle": "control"},"direction": "READONLY"},{"cName": "B","offset": { "type": "dynamic","port_name": "B","bundle": "control"},"direction": "READONLY"},{"cName": "C","offset": { "type": "dynamic","port_name": "C","bundle": "control"},"direction": "READONLY"},{"cName": "ABC","offset": { "type": "dynamic","port_name": "ABC","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "A", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "B", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "C", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "ABC", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "N", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "M", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "P", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"MM","role":"start","value":"0","valid_bit":"0"},{"name":"MM","role":"continue","value":"0","valid_bit":"4"},{"name":"MM","role":"auto_start","value":"0","valid_bit":"7"},{"name":"A","role":"data","value":"16"},{"name":"B","role":"data","value":"28"},{"name":"C","role":"data","value":"40"},{"name":"ABC","role":"data","value":"52"},{"name":"N","role":"data","value":"64"},{"name":"M","role":"data","value":"72"},{"name":"P","role":"data","value":"80"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"MM","role":"start","value":"0","valid_bit":"0"},{"name":"MM","role":"done","value":"0","valid_bit":"1"},{"name":"MM","role":"idle","value":"0","valid_bit":"2"},{"name":"MM","role":"ready","value":"0","valid_bit":"3"},{"name":"MM","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set ArgLastReadFirstWriteLatency {
	MM {
		gmem {Type IO LastRead 290 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}
		ABC {Type I LastRead 0 FirstWrite -1}
		N {Type I LastRead 0 FirstWrite -1}
		M {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}}
	MM_Pipeline_VITIS_LOOP_65_8 {
		mux_case_155331271_lcssa1784 {Type I LastRead 0 FirstWrite -1}
		mux_case_145321269_lcssa1782 {Type I LastRead 0 FirstWrite -1}
		mux_case_135311267_lcssa1780 {Type I LastRead 0 FirstWrite -1}
		mux_case_125301265_lcssa1778 {Type I LastRead 0 FirstWrite -1}
		mux_case_115291263_lcssa1776 {Type I LastRead 0 FirstWrite -1}
		mux_case_105281261_lcssa1774 {Type I LastRead 0 FirstWrite -1}
		mux_case_95271259_lcssa1772 {Type I LastRead 0 FirstWrite -1}
		mux_case_85261257_lcssa1770 {Type I LastRead 0 FirstWrite -1}
		mux_case_75251255_lcssa1768 {Type I LastRead 0 FirstWrite -1}
		mux_case_65241253_lcssa1766 {Type I LastRead 0 FirstWrite -1}
		mux_case_55231251_lcssa1764 {Type I LastRead 0 FirstWrite -1}
		mux_case_45221249_lcssa1762 {Type I LastRead 0 FirstWrite -1}
		mux_case_35211247_lcssa1760 {Type I LastRead 0 FirstWrite -1}
		mux_case_25201245_lcssa1758 {Type I LastRead 0 FirstWrite -1}
		mux_case_15191243_lcssa1756 {Type I LastRead 0 FirstWrite -1}
		mux_case_05181241_lcssa1754 {Type I LastRead 0 FirstWrite -1}
		mux_case_155171239_lcssa1752 {Type I LastRead 0 FirstWrite -1}
		mux_case_145161237_lcssa1750 {Type I LastRead 0 FirstWrite -1}
		mux_case_135151235_lcssa1748 {Type I LastRead 0 FirstWrite -1}
		mux_case_125141233_lcssa1746 {Type I LastRead 0 FirstWrite -1}
		mux_case_115131231_lcssa1744 {Type I LastRead 0 FirstWrite -1}
		mux_case_105121229_lcssa1742 {Type I LastRead 0 FirstWrite -1}
		mux_case_95111227_lcssa1740 {Type I LastRead 0 FirstWrite -1}
		mux_case_85101225_lcssa1738 {Type I LastRead 0 FirstWrite -1}
		mux_case_75091223_lcssa1736 {Type I LastRead 0 FirstWrite -1}
		mux_case_65081221_lcssa1734 {Type I LastRead 0 FirstWrite -1}
		mux_case_55071219_lcssa1732 {Type I LastRead 0 FirstWrite -1}
		mux_case_45061217_lcssa1730 {Type I LastRead 0 FirstWrite -1}
		mux_case_35051215_lcssa1728 {Type I LastRead 0 FirstWrite -1}
		mux_case_25041213_lcssa1726 {Type I LastRead 0 FirstWrite -1}
		mux_case_15031211_lcssa1724 {Type I LastRead 0 FirstWrite -1}
		mux_case_05021209_lcssa1722 {Type I LastRead 0 FirstWrite -1}
		mux_case_155011207_lcssa1720 {Type I LastRead 0 FirstWrite -1}
		mux_case_145001205_lcssa1718 {Type I LastRead 0 FirstWrite -1}
		mux_case_134991203_lcssa1716 {Type I LastRead 0 FirstWrite -1}
		mux_case_124981201_lcssa1714 {Type I LastRead 0 FirstWrite -1}
		mux_case_114971199_lcssa1712 {Type I LastRead 0 FirstWrite -1}
		mux_case_104961197_lcssa1710 {Type I LastRead 0 FirstWrite -1}
		mux_case_94951195_lcssa1708 {Type I LastRead 0 FirstWrite -1}
		mux_case_84941193_lcssa1706 {Type I LastRead 0 FirstWrite -1}
		mux_case_74931191_lcssa1704 {Type I LastRead 0 FirstWrite -1}
		mux_case_64921189_lcssa1702 {Type I LastRead 0 FirstWrite -1}
		mux_case_54911187_lcssa1700 {Type I LastRead 0 FirstWrite -1}
		mux_case_44901185_lcssa1698 {Type I LastRead 0 FirstWrite -1}
		mux_case_34891183_lcssa1696 {Type I LastRead 0 FirstWrite -1}
		mux_case_24881181_lcssa1694 {Type I LastRead 0 FirstWrite -1}
		mux_case_14871179_lcssa1692 {Type I LastRead 0 FirstWrite -1}
		mux_case_04861177_lcssa1690 {Type I LastRead 0 FirstWrite -1}
		mux_case_154851175_lcssa1688 {Type I LastRead 0 FirstWrite -1}
		mux_case_144841173_lcssa1686 {Type I LastRead 0 FirstWrite -1}
		mux_case_134831171_lcssa1684 {Type I LastRead 0 FirstWrite -1}
		mux_case_124821169_lcssa1682 {Type I LastRead 0 FirstWrite -1}
		mux_case_114811167_lcssa1680 {Type I LastRead 0 FirstWrite -1}
		mux_case_104801165_lcssa1678 {Type I LastRead 0 FirstWrite -1}
		mux_case_94791163_lcssa1676 {Type I LastRead 0 FirstWrite -1}
		mux_case_84781161_lcssa1674 {Type I LastRead 0 FirstWrite -1}
		mux_case_74771159_lcssa1672 {Type I LastRead 0 FirstWrite -1}
		mux_case_64761157_lcssa1670 {Type I LastRead 0 FirstWrite -1}
		mux_case_54751155_lcssa1668 {Type I LastRead 0 FirstWrite -1}
		mux_case_44741153_lcssa1666 {Type I LastRead 0 FirstWrite -1}
		mux_case_34731151_lcssa1664 {Type I LastRead 0 FirstWrite -1}
		mux_case_24721149_lcssa1662 {Type I LastRead 0 FirstWrite -1}
		mux_case_14711147_lcssa1660 {Type I LastRead 0 FirstWrite -1}
		mux_case_04701145_lcssa1658 {Type I LastRead 0 FirstWrite -1}
		mux_case_154691143_lcssa1656 {Type I LastRead 0 FirstWrite -1}
		mux_case_144681141_lcssa1654 {Type I LastRead 0 FirstWrite -1}
		mux_case_134671139_lcssa1652 {Type I LastRead 0 FirstWrite -1}
		mux_case_124661137_lcssa1650 {Type I LastRead 0 FirstWrite -1}
		mux_case_114651135_lcssa1648 {Type I LastRead 0 FirstWrite -1}
		mux_case_104641133_lcssa1646 {Type I LastRead 0 FirstWrite -1}
		mux_case_94631131_lcssa1644 {Type I LastRead 0 FirstWrite -1}
		mux_case_84621129_lcssa1642 {Type I LastRead 0 FirstWrite -1}
		mux_case_74611127_lcssa1640 {Type I LastRead 0 FirstWrite -1}
		mux_case_64601125_lcssa1638 {Type I LastRead 0 FirstWrite -1}
		mux_case_54591123_lcssa1636 {Type I LastRead 0 FirstWrite -1}
		mux_case_44581121_lcssa1634 {Type I LastRead 0 FirstWrite -1}
		mux_case_34571119_lcssa1632 {Type I LastRead 0 FirstWrite -1}
		mux_case_24561117_lcssa1630 {Type I LastRead 0 FirstWrite -1}
		mux_case_14551115_lcssa1628 {Type I LastRead 0 FirstWrite -1}
		mux_case_04541113_lcssa1626 {Type I LastRead 0 FirstWrite -1}
		mux_case_154531111_lcssa1624 {Type I LastRead 0 FirstWrite -1}
		mux_case_144521109_lcssa1622 {Type I LastRead 0 FirstWrite -1}
		mux_case_134511107_lcssa1620 {Type I LastRead 0 FirstWrite -1}
		mux_case_124501105_lcssa1618 {Type I LastRead 0 FirstWrite -1}
		mux_case_114491103_lcssa1616 {Type I LastRead 0 FirstWrite -1}
		mux_case_104481101_lcssa1614 {Type I LastRead 0 FirstWrite -1}
		mux_case_94471099_lcssa1612 {Type I LastRead 0 FirstWrite -1}
		mux_case_84461097_lcssa1610 {Type I LastRead 0 FirstWrite -1}
		mux_case_74451095_lcssa1608 {Type I LastRead 0 FirstWrite -1}
		mux_case_64441093_lcssa1606 {Type I LastRead 0 FirstWrite -1}
		mux_case_54431091_lcssa1604 {Type I LastRead 0 FirstWrite -1}
		mux_case_44421089_lcssa1602 {Type I LastRead 0 FirstWrite -1}
		mux_case_34411087_lcssa1600 {Type I LastRead 0 FirstWrite -1}
		mux_case_24401085_lcssa1598 {Type I LastRead 0 FirstWrite -1}
		mux_case_14391083_lcssa1596 {Type I LastRead 0 FirstWrite -1}
		mux_case_04381081_lcssa1594 {Type I LastRead 0 FirstWrite -1}
		mux_case_154371079_lcssa1592 {Type I LastRead 0 FirstWrite -1}
		mux_case_144361077_lcssa1590 {Type I LastRead 0 FirstWrite -1}
		mux_case_134351075_lcssa1588 {Type I LastRead 0 FirstWrite -1}
		mux_case_124341073_lcssa1586 {Type I LastRead 0 FirstWrite -1}
		mux_case_114331071_lcssa1584 {Type I LastRead 0 FirstWrite -1}
		mux_case_104321069_lcssa1582 {Type I LastRead 0 FirstWrite -1}
		mux_case_94311067_lcssa1580 {Type I LastRead 0 FirstWrite -1}
		mux_case_84301065_lcssa1578 {Type I LastRead 0 FirstWrite -1}
		mux_case_74291063_lcssa1576 {Type I LastRead 0 FirstWrite -1}
		mux_case_64281061_lcssa1574 {Type I LastRead 0 FirstWrite -1}
		mux_case_54271059_lcssa1572 {Type I LastRead 0 FirstWrite -1}
		mux_case_44261057_lcssa1570 {Type I LastRead 0 FirstWrite -1}
		mux_case_34251055_lcssa1568 {Type I LastRead 0 FirstWrite -1}
		mux_case_24241053_lcssa1566 {Type I LastRead 0 FirstWrite -1}
		mux_case_14231051_lcssa1564 {Type I LastRead 0 FirstWrite -1}
		mux_case_04221049_lcssa1562 {Type I LastRead 0 FirstWrite -1}
		mux_case_154211047_lcssa1560 {Type I LastRead 0 FirstWrite -1}
		mux_case_144201045_lcssa1558 {Type I LastRead 0 FirstWrite -1}
		mux_case_134191043_lcssa1556 {Type I LastRead 0 FirstWrite -1}
		mux_case_124181041_lcssa1554 {Type I LastRead 0 FirstWrite -1}
		mux_case_114171039_lcssa1552 {Type I LastRead 0 FirstWrite -1}
		mux_case_104161037_lcssa1550 {Type I LastRead 0 FirstWrite -1}
		mux_case_94151035_lcssa1548 {Type I LastRead 0 FirstWrite -1}
		mux_case_84141033_lcssa1546 {Type I LastRead 0 FirstWrite -1}
		mux_case_74131031_lcssa1544 {Type I LastRead 0 FirstWrite -1}
		mux_case_64121029_lcssa1542 {Type I LastRead 0 FirstWrite -1}
		mux_case_54111027_lcssa1540 {Type I LastRead 0 FirstWrite -1}
		mux_case_44101025_lcssa1538 {Type I LastRead 0 FirstWrite -1}
		mux_case_34091023_lcssa1536 {Type I LastRead 0 FirstWrite -1}
		mux_case_24081021_lcssa1534 {Type I LastRead 0 FirstWrite -1}
		mux_case_14071019_lcssa1532 {Type I LastRead 0 FirstWrite -1}
		mux_case_04061017_lcssa1530 {Type I LastRead 0 FirstWrite -1}
		mux_case_154051015_lcssa1528 {Type I LastRead 0 FirstWrite -1}
		mux_case_144041013_lcssa1526 {Type I LastRead 0 FirstWrite -1}
		mux_case_134031011_lcssa1524 {Type I LastRead 0 FirstWrite -1}
		mux_case_124021009_lcssa1522 {Type I LastRead 0 FirstWrite -1}
		mux_case_114011007_lcssa1520 {Type I LastRead 0 FirstWrite -1}
		mux_case_104001005_lcssa1518 {Type I LastRead 0 FirstWrite -1}
		mux_case_93991003_lcssa1516 {Type I LastRead 0 FirstWrite -1}
		mux_case_83981001_lcssa1514 {Type I LastRead 0 FirstWrite -1}
		mux_case_7397999_lcssa1512 {Type I LastRead 0 FirstWrite -1}
		mux_case_6396997_lcssa1510 {Type I LastRead 0 FirstWrite -1}
		mux_case_5395995_lcssa1508 {Type I LastRead 0 FirstWrite -1}
		mux_case_4394993_lcssa1506 {Type I LastRead 0 FirstWrite -1}
		mux_case_3393991_lcssa1504 {Type I LastRead 0 FirstWrite -1}
		mux_case_2392989_lcssa1502 {Type I LastRead 0 FirstWrite -1}
		mux_case_1391987_lcssa1500 {Type I LastRead 0 FirstWrite -1}
		mux_case_0390985_lcssa1498 {Type I LastRead 0 FirstWrite -1}
		mux_case_15389983_lcssa1496 {Type I LastRead 0 FirstWrite -1}
		mux_case_14388981_lcssa1494 {Type I LastRead 0 FirstWrite -1}
		mux_case_13387979_lcssa1492 {Type I LastRead 0 FirstWrite -1}
		mux_case_12386977_lcssa1490 {Type I LastRead 0 FirstWrite -1}
		mux_case_11385975_lcssa1488 {Type I LastRead 0 FirstWrite -1}
		mux_case_10384973_lcssa1486 {Type I LastRead 0 FirstWrite -1}
		mux_case_9383971_lcssa1484 {Type I LastRead 0 FirstWrite -1}
		mux_case_8382969_lcssa1482 {Type I LastRead 0 FirstWrite -1}
		mux_case_7381967_lcssa1480 {Type I LastRead 0 FirstWrite -1}
		mux_case_6380965_lcssa1478 {Type I LastRead 0 FirstWrite -1}
		mux_case_5379963_lcssa1476 {Type I LastRead 0 FirstWrite -1}
		mux_case_4378961_lcssa1474 {Type I LastRead 0 FirstWrite -1}
		mux_case_3377959_lcssa1472 {Type I LastRead 0 FirstWrite -1}
		mux_case_2376957_lcssa1470 {Type I LastRead 0 FirstWrite -1}
		mux_case_1375955_lcssa1468 {Type I LastRead 0 FirstWrite -1}
		mux_case_0374953_lcssa1466 {Type I LastRead 0 FirstWrite -1}
		mux_case_15373951_lcssa1464 {Type I LastRead 0 FirstWrite -1}
		mux_case_14372949_lcssa1462 {Type I LastRead 0 FirstWrite -1}
		mux_case_13371947_lcssa1460 {Type I LastRead 0 FirstWrite -1}
		mux_case_12370945_lcssa1458 {Type I LastRead 0 FirstWrite -1}
		mux_case_11369943_lcssa1456 {Type I LastRead 0 FirstWrite -1}
		mux_case_10368941_lcssa1454 {Type I LastRead 0 FirstWrite -1}
		mux_case_9367939_lcssa1452 {Type I LastRead 0 FirstWrite -1}
		mux_case_8366937_lcssa1450 {Type I LastRead 0 FirstWrite -1}
		mux_case_7365935_lcssa1448 {Type I LastRead 0 FirstWrite -1}
		mux_case_6364933_lcssa1446 {Type I LastRead 0 FirstWrite -1}
		mux_case_5363931_lcssa1444 {Type I LastRead 0 FirstWrite -1}
		mux_case_4362929_lcssa1442 {Type I LastRead 0 FirstWrite -1}
		mux_case_3361927_lcssa1440 {Type I LastRead 0 FirstWrite -1}
		mux_case_2360925_lcssa1438 {Type I LastRead 0 FirstWrite -1}
		mux_case_1359923_lcssa1436 {Type I LastRead 0 FirstWrite -1}
		mux_case_0358921_lcssa1434 {Type I LastRead 0 FirstWrite -1}
		mux_case_15357919_lcssa1432 {Type I LastRead 0 FirstWrite -1}
		mux_case_14356917_lcssa1430 {Type I LastRead 0 FirstWrite -1}
		mux_case_13355915_lcssa1428 {Type I LastRead 0 FirstWrite -1}
		mux_case_12354913_lcssa1426 {Type I LastRead 0 FirstWrite -1}
		mux_case_11353911_lcssa1424 {Type I LastRead 0 FirstWrite -1}
		mux_case_10352909_lcssa1422 {Type I LastRead 0 FirstWrite -1}
		mux_case_9351907_lcssa1420 {Type I LastRead 0 FirstWrite -1}
		mux_case_8350905_lcssa1418 {Type I LastRead 0 FirstWrite -1}
		mux_case_7349903_lcssa1416 {Type I LastRead 0 FirstWrite -1}
		mux_case_6348901_lcssa1414 {Type I LastRead 0 FirstWrite -1}
		mux_case_5347899_lcssa1412 {Type I LastRead 0 FirstWrite -1}
		mux_case_4346897_lcssa1410 {Type I LastRead 0 FirstWrite -1}
		mux_case_3345895_lcssa1408 {Type I LastRead 0 FirstWrite -1}
		mux_case_2344893_lcssa1406 {Type I LastRead 0 FirstWrite -1}
		mux_case_1343891_lcssa1404 {Type I LastRead 0 FirstWrite -1}
		mux_case_0342889_lcssa1402 {Type I LastRead 0 FirstWrite -1}
		mux_case_15341887_lcssa1400 {Type I LastRead 0 FirstWrite -1}
		mux_case_14340885_lcssa1398 {Type I LastRead 0 FirstWrite -1}
		mux_case_13339883_lcssa1396 {Type I LastRead 0 FirstWrite -1}
		mux_case_12338881_lcssa1394 {Type I LastRead 0 FirstWrite -1}
		mux_case_11337879_lcssa1392 {Type I LastRead 0 FirstWrite -1}
		mux_case_10336877_lcssa1390 {Type I LastRead 0 FirstWrite -1}
		mux_case_9335875_lcssa1388 {Type I LastRead 0 FirstWrite -1}
		mux_case_8334873_lcssa1386 {Type I LastRead 0 FirstWrite -1}
		mux_case_7333871_lcssa1384 {Type I LastRead 0 FirstWrite -1}
		mux_case_6332869_lcssa1382 {Type I LastRead 0 FirstWrite -1}
		mux_case_5331867_lcssa1380 {Type I LastRead 0 FirstWrite -1}
		mux_case_4330865_lcssa1378 {Type I LastRead 0 FirstWrite -1}
		mux_case_3329863_lcssa1376 {Type I LastRead 0 FirstWrite -1}
		mux_case_2328861_lcssa1374 {Type I LastRead 0 FirstWrite -1}
		mux_case_1327859_lcssa1372 {Type I LastRead 0 FirstWrite -1}
		mux_case_0326857_lcssa1370 {Type I LastRead 0 FirstWrite -1}
		mux_case_15325855_lcssa1368 {Type I LastRead 0 FirstWrite -1}
		mux_case_14324853_lcssa1366 {Type I LastRead 0 FirstWrite -1}
		mux_case_13323851_lcssa1364 {Type I LastRead 0 FirstWrite -1}
		mux_case_12322849_lcssa1362 {Type I LastRead 0 FirstWrite -1}
		mux_case_11321847_lcssa1360 {Type I LastRead 0 FirstWrite -1}
		mux_case_10320845_lcssa1358 {Type I LastRead 0 FirstWrite -1}
		mux_case_9319843_lcssa1356 {Type I LastRead 0 FirstWrite -1}
		mux_case_8318841_lcssa1354 {Type I LastRead 0 FirstWrite -1}
		mux_case_7317839_lcssa1352 {Type I LastRead 0 FirstWrite -1}
		mux_case_6316837_lcssa1350 {Type I LastRead 0 FirstWrite -1}
		mux_case_5315835_lcssa1348 {Type I LastRead 0 FirstWrite -1}
		mux_case_4314833_lcssa1346 {Type I LastRead 0 FirstWrite -1}
		mux_case_3313831_lcssa1344 {Type I LastRead 0 FirstWrite -1}
		mux_case_2312829_lcssa1342 {Type I LastRead 0 FirstWrite -1}
		mux_case_1311827_lcssa1340 {Type I LastRead 0 FirstWrite -1}
		mux_case_0310825_lcssa1338 {Type I LastRead 0 FirstWrite -1}
		mux_case_15309823_lcssa1336 {Type I LastRead 0 FirstWrite -1}
		mux_case_14308821_lcssa1334 {Type I LastRead 0 FirstWrite -1}
		mux_case_13307819_lcssa1332 {Type I LastRead 0 FirstWrite -1}
		mux_case_12306817_lcssa1330 {Type I LastRead 0 FirstWrite -1}
		mux_case_11305815_lcssa1328 {Type I LastRead 0 FirstWrite -1}
		mux_case_10304813_lcssa1326 {Type I LastRead 0 FirstWrite -1}
		mux_case_9303811_lcssa1324 {Type I LastRead 0 FirstWrite -1}
		mux_case_8302809_lcssa1322 {Type I LastRead 0 FirstWrite -1}
		mux_case_7301807_lcssa1320 {Type I LastRead 0 FirstWrite -1}
		mux_case_6300805_lcssa1318 {Type I LastRead 0 FirstWrite -1}
		mux_case_5299803_lcssa1316 {Type I LastRead 0 FirstWrite -1}
		mux_case_4298801_lcssa1314 {Type I LastRead 0 FirstWrite -1}
		mux_case_3297799_lcssa1312 {Type I LastRead 0 FirstWrite -1}
		mux_case_2296797_lcssa1310 {Type I LastRead 0 FirstWrite -1}
		mux_case_1295795_lcssa1308 {Type I LastRead 0 FirstWrite -1}
		mux_case_0294793_lcssa1306 {Type I LastRead 0 FirstWrite -1}
		mux_case_15791_lcssa1304 {Type I LastRead 0 FirstWrite -1}
		mux_case_14789_lcssa1302 {Type I LastRead 0 FirstWrite -1}
		mux_case_13787_lcssa1300 {Type I LastRead 0 FirstWrite -1}
		mux_case_12785_lcssa1298 {Type I LastRead 0 FirstWrite -1}
		mux_case_11783_lcssa1296 {Type I LastRead 0 FirstWrite -1}
		mux_case_10781_lcssa1294 {Type I LastRead 0 FirstWrite -1}
		mux_case_9779_lcssa1292 {Type I LastRead 0 FirstWrite -1}
		mux_case_8777_lcssa1290 {Type I LastRead 0 FirstWrite -1}
		mux_case_7775_lcssa1288 {Type I LastRead 0 FirstWrite -1}
		mux_case_6773_lcssa1286 {Type I LastRead 0 FirstWrite -1}
		mux_case_5771_lcssa1284 {Type I LastRead 0 FirstWrite -1}
		mux_case_4769_lcssa1282 {Type I LastRead 0 FirstWrite -1}
		mux_case_3767_lcssa1280 {Type I LastRead 0 FirstWrite -1}
		mux_case_2765_lcssa1278 {Type I LastRead 0 FirstWrite -1}
		mux_case_1763_lcssa1276 {Type I LastRead 0 FirstWrite -1}
		mux_case_0761_lcssa1274 {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 11 FirstWrite -1}
		shl_ln56_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln49 {Type I LastRead 0 FirstWrite -1}
		zext_ln60 {Type I LastRead 0 FirstWrite -1}
		zext_ln60_1 {Type I LastRead 0 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read_1 {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read_2 {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read_3 {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read_4 {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read_5 {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read_6 {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read_7 {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read_8 {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read_9 {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read_10 {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read_11 {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read_12 {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read_13 {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read_14 {Type I LastRead 0 FirstWrite -1}
		gmem_addr_17_read_15 {Type I LastRead 0 FirstWrite -1}
		mux_case_155331272_out {Type O LastRead -1 FirstWrite 12}
		mux_case_145321270_out {Type O LastRead -1 FirstWrite 12}
		mux_case_135311268_out {Type O LastRead -1 FirstWrite 12}
		mux_case_125301266_out {Type O LastRead -1 FirstWrite 12}
		mux_case_115291264_out {Type O LastRead -1 FirstWrite 12}
		mux_case_105281262_out {Type O LastRead -1 FirstWrite 12}
		mux_case_95271260_out {Type O LastRead -1 FirstWrite 12}
		mux_case_85261258_out {Type O LastRead -1 FirstWrite 12}
		mux_case_75251256_out {Type O LastRead -1 FirstWrite 12}
		mux_case_65241254_out {Type O LastRead -1 FirstWrite 12}
		mux_case_55231252_out {Type O LastRead -1 FirstWrite 12}
		mux_case_45221250_out {Type O LastRead -1 FirstWrite 12}
		mux_case_35211248_out {Type O LastRead -1 FirstWrite 12}
		mux_case_25201246_out {Type O LastRead -1 FirstWrite 12}
		mux_case_15191244_out {Type O LastRead -1 FirstWrite 12}
		mux_case_05181242_out {Type O LastRead -1 FirstWrite 12}
		mux_case_155171240_out {Type O LastRead -1 FirstWrite 12}
		mux_case_145161238_out {Type O LastRead -1 FirstWrite 12}
		mux_case_135151236_out {Type O LastRead -1 FirstWrite 12}
		mux_case_125141234_out {Type O LastRead -1 FirstWrite 12}
		mux_case_115131232_out {Type O LastRead -1 FirstWrite 12}
		mux_case_105121230_out {Type O LastRead -1 FirstWrite 12}
		mux_case_95111228_out {Type O LastRead -1 FirstWrite 12}
		mux_case_85101226_out {Type O LastRead -1 FirstWrite 12}
		mux_case_75091224_out {Type O LastRead -1 FirstWrite 12}
		mux_case_65081222_out {Type O LastRead -1 FirstWrite 12}
		mux_case_55071220_out {Type O LastRead -1 FirstWrite 12}
		mux_case_45061218_out {Type O LastRead -1 FirstWrite 12}
		mux_case_35051216_out {Type O LastRead -1 FirstWrite 12}
		mux_case_25041214_out {Type O LastRead -1 FirstWrite 12}
		mux_case_15031212_out {Type O LastRead -1 FirstWrite 12}
		mux_case_05021210_out {Type O LastRead -1 FirstWrite 12}
		mux_case_155011208_out {Type O LastRead -1 FirstWrite 12}
		mux_case_145001206_out {Type O LastRead -1 FirstWrite 12}
		mux_case_134991204_out {Type O LastRead -1 FirstWrite 12}
		mux_case_124981202_out {Type O LastRead -1 FirstWrite 12}
		mux_case_114971200_out {Type O LastRead -1 FirstWrite 12}
		mux_case_104961198_out {Type O LastRead -1 FirstWrite 12}
		mux_case_94951196_out {Type O LastRead -1 FirstWrite 12}
		mux_case_84941194_out {Type O LastRead -1 FirstWrite 12}
		mux_case_74931192_out {Type O LastRead -1 FirstWrite 12}
		mux_case_64921190_out {Type O LastRead -1 FirstWrite 12}
		mux_case_54911188_out {Type O LastRead -1 FirstWrite 12}
		mux_case_44901186_out {Type O LastRead -1 FirstWrite 12}
		mux_case_34891184_out {Type O LastRead -1 FirstWrite 12}
		mux_case_24881182_out {Type O LastRead -1 FirstWrite 12}
		mux_case_14871180_out {Type O LastRead -1 FirstWrite 12}
		mux_case_04861178_out {Type O LastRead -1 FirstWrite 12}
		mux_case_154851176_out {Type O LastRead -1 FirstWrite 12}
		mux_case_144841174_out {Type O LastRead -1 FirstWrite 12}
		mux_case_134831172_out {Type O LastRead -1 FirstWrite 12}
		mux_case_124821170_out {Type O LastRead -1 FirstWrite 12}
		mux_case_114811168_out {Type O LastRead -1 FirstWrite 12}
		mux_case_104801166_out {Type O LastRead -1 FirstWrite 12}
		mux_case_94791164_out {Type O LastRead -1 FirstWrite 12}
		mux_case_84781162_out {Type O LastRead -1 FirstWrite 12}
		mux_case_74771160_out {Type O LastRead -1 FirstWrite 12}
		mux_case_64761158_out {Type O LastRead -1 FirstWrite 12}
		mux_case_54751156_out {Type O LastRead -1 FirstWrite 12}
		mux_case_44741154_out {Type O LastRead -1 FirstWrite 12}
		mux_case_34731152_out {Type O LastRead -1 FirstWrite 12}
		mux_case_24721150_out {Type O LastRead -1 FirstWrite 12}
		mux_case_14711148_out {Type O LastRead -1 FirstWrite 12}
		mux_case_04701146_out {Type O LastRead -1 FirstWrite 12}
		mux_case_154691144_out {Type O LastRead -1 FirstWrite 12}
		mux_case_144681142_out {Type O LastRead -1 FirstWrite 12}
		mux_case_134671140_out {Type O LastRead -1 FirstWrite 12}
		mux_case_124661138_out {Type O LastRead -1 FirstWrite 12}
		mux_case_114651136_out {Type O LastRead -1 FirstWrite 12}
		mux_case_104641134_out {Type O LastRead -1 FirstWrite 12}
		mux_case_94631132_out {Type O LastRead -1 FirstWrite 12}
		mux_case_84621130_out {Type O LastRead -1 FirstWrite 12}
		mux_case_74611128_out {Type O LastRead -1 FirstWrite 12}
		mux_case_64601126_out {Type O LastRead -1 FirstWrite 12}
		mux_case_54591124_out {Type O LastRead -1 FirstWrite 12}
		mux_case_44581122_out {Type O LastRead -1 FirstWrite 12}
		mux_case_34571120_out {Type O LastRead -1 FirstWrite 12}
		mux_case_24561118_out {Type O LastRead -1 FirstWrite 12}
		mux_case_14551116_out {Type O LastRead -1 FirstWrite 12}
		mux_case_04541114_out {Type O LastRead -1 FirstWrite 12}
		mux_case_154531112_out {Type O LastRead -1 FirstWrite 12}
		mux_case_144521110_out {Type O LastRead -1 FirstWrite 12}
		mux_case_134511108_out {Type O LastRead -1 FirstWrite 12}
		mux_case_124501106_out {Type O LastRead -1 FirstWrite 12}
		mux_case_114491104_out {Type O LastRead -1 FirstWrite 12}
		mux_case_104481102_out {Type O LastRead -1 FirstWrite 12}
		mux_case_94471100_out {Type O LastRead -1 FirstWrite 12}
		mux_case_84461098_out {Type O LastRead -1 FirstWrite 12}
		mux_case_74451096_out {Type O LastRead -1 FirstWrite 12}
		mux_case_64441094_out {Type O LastRead -1 FirstWrite 12}
		mux_case_54431092_out {Type O LastRead -1 FirstWrite 12}
		mux_case_44421090_out {Type O LastRead -1 FirstWrite 12}
		mux_case_34411088_out {Type O LastRead -1 FirstWrite 12}
		mux_case_24401086_out {Type O LastRead -1 FirstWrite 12}
		mux_case_14391084_out {Type O LastRead -1 FirstWrite 12}
		mux_case_04381082_out {Type O LastRead -1 FirstWrite 12}
		mux_case_154371080_out {Type O LastRead -1 FirstWrite 12}
		mux_case_144361078_out {Type O LastRead -1 FirstWrite 12}
		mux_case_134351076_out {Type O LastRead -1 FirstWrite 12}
		mux_case_124341074_out {Type O LastRead -1 FirstWrite 12}
		mux_case_114331072_out {Type O LastRead -1 FirstWrite 12}
		mux_case_104321070_out {Type O LastRead -1 FirstWrite 12}
		mux_case_94311068_out {Type O LastRead -1 FirstWrite 12}
		mux_case_84301066_out {Type O LastRead -1 FirstWrite 12}
		mux_case_74291064_out {Type O LastRead -1 FirstWrite 12}
		mux_case_64281062_out {Type O LastRead -1 FirstWrite 12}
		mux_case_54271060_out {Type O LastRead -1 FirstWrite 12}
		mux_case_44261058_out {Type O LastRead -1 FirstWrite 12}
		mux_case_34251056_out {Type O LastRead -1 FirstWrite 12}
		mux_case_24241054_out {Type O LastRead -1 FirstWrite 12}
		mux_case_14231052_out {Type O LastRead -1 FirstWrite 12}
		mux_case_04221050_out {Type O LastRead -1 FirstWrite 12}
		mux_case_154211048_out {Type O LastRead -1 FirstWrite 12}
		mux_case_144201046_out {Type O LastRead -1 FirstWrite 12}
		mux_case_134191044_out {Type O LastRead -1 FirstWrite 12}
		mux_case_124181042_out {Type O LastRead -1 FirstWrite 12}
		mux_case_114171040_out {Type O LastRead -1 FirstWrite 12}
		mux_case_104161038_out {Type O LastRead -1 FirstWrite 12}
		mux_case_94151036_out {Type O LastRead -1 FirstWrite 12}
		mux_case_84141034_out {Type O LastRead -1 FirstWrite 12}
		mux_case_74131032_out {Type O LastRead -1 FirstWrite 12}
		mux_case_64121030_out {Type O LastRead -1 FirstWrite 12}
		mux_case_54111028_out {Type O LastRead -1 FirstWrite 12}
		mux_case_44101026_out {Type O LastRead -1 FirstWrite 12}
		mux_case_34091024_out {Type O LastRead -1 FirstWrite 12}
		mux_case_24081022_out {Type O LastRead -1 FirstWrite 12}
		mux_case_14071020_out {Type O LastRead -1 FirstWrite 12}
		mux_case_04061018_out {Type O LastRead -1 FirstWrite 12}
		mux_case_154051016_out {Type O LastRead -1 FirstWrite 12}
		mux_case_144041014_out {Type O LastRead -1 FirstWrite 12}
		mux_case_134031012_out {Type O LastRead -1 FirstWrite 12}
		mux_case_124021010_out {Type O LastRead -1 FirstWrite 12}
		mux_case_114011008_out {Type O LastRead -1 FirstWrite 12}
		mux_case_104001006_out {Type O LastRead -1 FirstWrite 12}
		mux_case_93991004_out {Type O LastRead -1 FirstWrite 12}
		mux_case_83981002_out {Type O LastRead -1 FirstWrite 12}
		mux_case_73971000_out {Type O LastRead -1 FirstWrite 12}
		mux_case_6396998_out {Type O LastRead -1 FirstWrite 12}
		mux_case_5395996_out {Type O LastRead -1 FirstWrite 12}
		mux_case_4394994_out {Type O LastRead -1 FirstWrite 12}
		mux_case_3393992_out {Type O LastRead -1 FirstWrite 12}
		mux_case_2392990_out {Type O LastRead -1 FirstWrite 12}
		mux_case_1391988_out {Type O LastRead -1 FirstWrite 12}
		mux_case_0390986_out {Type O LastRead -1 FirstWrite 12}
		mux_case_15389984_out {Type O LastRead -1 FirstWrite 12}
		mux_case_14388982_out {Type O LastRead -1 FirstWrite 12}
		mux_case_13387980_out {Type O LastRead -1 FirstWrite 12}
		mux_case_12386978_out {Type O LastRead -1 FirstWrite 12}
		mux_case_11385976_out {Type O LastRead -1 FirstWrite 12}
		mux_case_10384974_out {Type O LastRead -1 FirstWrite 12}
		mux_case_9383972_out {Type O LastRead -1 FirstWrite 12}
		mux_case_8382970_out {Type O LastRead -1 FirstWrite 12}
		mux_case_7381968_out {Type O LastRead -1 FirstWrite 12}
		mux_case_6380966_out {Type O LastRead -1 FirstWrite 12}
		mux_case_5379964_out {Type O LastRead -1 FirstWrite 12}
		mux_case_4378962_out {Type O LastRead -1 FirstWrite 12}
		mux_case_3377960_out {Type O LastRead -1 FirstWrite 12}
		mux_case_2376958_out {Type O LastRead -1 FirstWrite 12}
		mux_case_1375956_out {Type O LastRead -1 FirstWrite 12}
		mux_case_0374954_out {Type O LastRead -1 FirstWrite 12}
		mux_case_15373952_out {Type O LastRead -1 FirstWrite 12}
		mux_case_14372950_out {Type O LastRead -1 FirstWrite 12}
		mux_case_13371948_out {Type O LastRead -1 FirstWrite 12}
		mux_case_12370946_out {Type O LastRead -1 FirstWrite 12}
		mux_case_11369944_out {Type O LastRead -1 FirstWrite 12}
		mux_case_10368942_out {Type O LastRead -1 FirstWrite 12}
		mux_case_9367940_out {Type O LastRead -1 FirstWrite 12}
		mux_case_8366938_out {Type O LastRead -1 FirstWrite 12}
		mux_case_7365936_out {Type O LastRead -1 FirstWrite 12}
		mux_case_6364934_out {Type O LastRead -1 FirstWrite 12}
		mux_case_5363932_out {Type O LastRead -1 FirstWrite 12}
		mux_case_4362930_out {Type O LastRead -1 FirstWrite 12}
		mux_case_3361928_out {Type O LastRead -1 FirstWrite 12}
		mux_case_2360926_out {Type O LastRead -1 FirstWrite 12}
		mux_case_1359924_out {Type O LastRead -1 FirstWrite 12}
		mux_case_0358922_out {Type O LastRead -1 FirstWrite 12}
		mux_case_15357920_out {Type O LastRead -1 FirstWrite 12}
		mux_case_14356918_out {Type O LastRead -1 FirstWrite 12}
		mux_case_13355916_out {Type O LastRead -1 FirstWrite 12}
		mux_case_12354914_out {Type O LastRead -1 FirstWrite 12}
		mux_case_11353912_out {Type O LastRead -1 FirstWrite 12}
		mux_case_10352910_out {Type O LastRead -1 FirstWrite 12}
		mux_case_9351908_out {Type O LastRead -1 FirstWrite 12}
		mux_case_8350906_out {Type O LastRead -1 FirstWrite 12}
		mux_case_7349904_out {Type O LastRead -1 FirstWrite 12}
		mux_case_6348902_out {Type O LastRead -1 FirstWrite 12}
		mux_case_5347900_out {Type O LastRead -1 FirstWrite 12}
		mux_case_4346898_out {Type O LastRead -1 FirstWrite 12}
		mux_case_3345896_out {Type O LastRead -1 FirstWrite 12}
		mux_case_2344894_out {Type O LastRead -1 FirstWrite 12}
		mux_case_1343892_out {Type O LastRead -1 FirstWrite 12}
		mux_case_0342890_out {Type O LastRead -1 FirstWrite 12}
		mux_case_15341888_out {Type O LastRead -1 FirstWrite 12}
		mux_case_14340886_out {Type O LastRead -1 FirstWrite 12}
		mux_case_13339884_out {Type O LastRead -1 FirstWrite 12}
		mux_case_12338882_out {Type O LastRead -1 FirstWrite 12}
		mux_case_11337880_out {Type O LastRead -1 FirstWrite 12}
		mux_case_10336878_out {Type O LastRead -1 FirstWrite 12}
		mux_case_9335876_out {Type O LastRead -1 FirstWrite 12}
		mux_case_8334874_out {Type O LastRead -1 FirstWrite 12}
		mux_case_7333872_out {Type O LastRead -1 FirstWrite 12}
		mux_case_6332870_out {Type O LastRead -1 FirstWrite 12}
		mux_case_5331868_out {Type O LastRead -1 FirstWrite 12}
		mux_case_4330866_out {Type O LastRead -1 FirstWrite 12}
		mux_case_3329864_out {Type O LastRead -1 FirstWrite 12}
		mux_case_2328862_out {Type O LastRead -1 FirstWrite 12}
		mux_case_1327860_out {Type O LastRead -1 FirstWrite 12}
		mux_case_0326858_out {Type O LastRead -1 FirstWrite 12}
		mux_case_15325856_out {Type O LastRead -1 FirstWrite 12}
		mux_case_14324854_out {Type O LastRead -1 FirstWrite 12}
		mux_case_13323852_out {Type O LastRead -1 FirstWrite 12}
		mux_case_12322850_out {Type O LastRead -1 FirstWrite 12}
		mux_case_11321848_out {Type O LastRead -1 FirstWrite 12}
		mux_case_10320846_out {Type O LastRead -1 FirstWrite 12}
		mux_case_9319844_out {Type O LastRead -1 FirstWrite 12}
		mux_case_8318842_out {Type O LastRead -1 FirstWrite 12}
		mux_case_7317840_out {Type O LastRead -1 FirstWrite 12}
		mux_case_6316838_out {Type O LastRead -1 FirstWrite 12}
		mux_case_5315836_out {Type O LastRead -1 FirstWrite 12}
		mux_case_4314834_out {Type O LastRead -1 FirstWrite 12}
		mux_case_3313832_out {Type O LastRead -1 FirstWrite 12}
		mux_case_2312830_out {Type O LastRead -1 FirstWrite 12}
		mux_case_1311828_out {Type O LastRead -1 FirstWrite 12}
		mux_case_0310826_out {Type O LastRead -1 FirstWrite 12}
		mux_case_15309824_out {Type O LastRead -1 FirstWrite 12}
		mux_case_14308822_out {Type O LastRead -1 FirstWrite 12}
		mux_case_13307820_out {Type O LastRead -1 FirstWrite 12}
		mux_case_12306818_out {Type O LastRead -1 FirstWrite 12}
		mux_case_11305816_out {Type O LastRead -1 FirstWrite 12}
		mux_case_10304814_out {Type O LastRead -1 FirstWrite 12}
		mux_case_9303812_out {Type O LastRead -1 FirstWrite 12}
		mux_case_8302810_out {Type O LastRead -1 FirstWrite 12}
		mux_case_7301808_out {Type O LastRead -1 FirstWrite 12}
		mux_case_6300806_out {Type O LastRead -1 FirstWrite 12}
		mux_case_5299804_out {Type O LastRead -1 FirstWrite 12}
		mux_case_4298802_out {Type O LastRead -1 FirstWrite 12}
		mux_case_3297800_out {Type O LastRead -1 FirstWrite 12}
		mux_case_2296798_out {Type O LastRead -1 FirstWrite 12}
		mux_case_1295796_out {Type O LastRead -1 FirstWrite 12}
		mux_case_0294794_out {Type O LastRead -1 FirstWrite 12}
		mux_case_15792_out {Type O LastRead -1 FirstWrite 12}
		mux_case_14790_out {Type O LastRead -1 FirstWrite 12}
		mux_case_13788_out {Type O LastRead -1 FirstWrite 12}
		mux_case_12786_out {Type O LastRead -1 FirstWrite 12}
		mux_case_11784_out {Type O LastRead -1 FirstWrite 12}
		mux_case_10782_out {Type O LastRead -1 FirstWrite 12}
		mux_case_9780_out {Type O LastRead -1 FirstWrite 12}
		mux_case_8778_out {Type O LastRead -1 FirstWrite 12}
		mux_case_7776_out {Type O LastRead -1 FirstWrite 12}
		mux_case_6774_out {Type O LastRead -1 FirstWrite 12}
		mux_case_5772_out {Type O LastRead -1 FirstWrite 12}
		mux_case_4770_out {Type O LastRead -1 FirstWrite 12}
		mux_case_3768_out {Type O LastRead -1 FirstWrite 12}
		mux_case_2766_out {Type O LastRead -1 FirstWrite 12}
		mux_case_1764_out {Type O LastRead -1 FirstWrite 12}
		mux_case_0762_out {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem { CHANNEL_NUM 0 BUNDLE gmem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
