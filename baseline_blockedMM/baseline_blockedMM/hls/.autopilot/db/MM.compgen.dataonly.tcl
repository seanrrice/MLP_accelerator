# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
A { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
B { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
C { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
ABC { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
N { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
M { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
P { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


