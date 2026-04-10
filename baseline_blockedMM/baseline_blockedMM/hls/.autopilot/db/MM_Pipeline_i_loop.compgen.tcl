# This script segment is generated automatically by AutoPilot

set name MM_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler MM_sparsemux_33_4_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name AB_block_15_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_15_1 \
    op interface \
    ports { AB_block_15_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name AB_block_14_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_14_1 \
    op interface \
    ports { AB_block_14_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name AB_block_13_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_13_1 \
    op interface \
    ports { AB_block_13_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name AB_block_12_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_12_1 \
    op interface \
    ports { AB_block_12_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name AB_block_11_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_11_1 \
    op interface \
    ports { AB_block_11_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name AB_block_10_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_10_1 \
    op interface \
    ports { AB_block_10_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name AB_block_9_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_9_1 \
    op interface \
    ports { AB_block_9_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name AB_block_8_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_8_1 \
    op interface \
    ports { AB_block_8_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name AB_block_7_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_7_1 \
    op interface \
    ports { AB_block_7_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name AB_block_6_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_6_1 \
    op interface \
    ports { AB_block_6_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name AB_block_5_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_5_1 \
    op interface \
    ports { AB_block_5_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name AB_block_4_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_4_1 \
    op interface \
    ports { AB_block_4_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name AB_block_3_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_3_1 \
    op interface \
    ports { AB_block_3_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name AB_block_2_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_2_1 \
    op interface \
    ports { AB_block_2_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name AB_block_1_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_1_1 \
    op interface \
    ports { AB_block_1_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name AB_block_0_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_0_1 \
    op interface \
    ports { AB_block_0_1 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name gmem_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_load_17 \
    op interface \
    ports { gmem_load_17 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name trunc_ln63_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_1 \
    op interface \
    ports { trunc_ln63_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name trunc_ln63_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_2 \
    op interface \
    ports { trunc_ln63_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name trunc_ln63_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_3 \
    op interface \
    ports { trunc_ln63_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name trunc_ln63_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_4 \
    op interface \
    ports { trunc_ln63_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name trunc_ln63_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_5 \
    op interface \
    ports { trunc_ln63_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name trunc_ln63_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_6 \
    op interface \
    ports { trunc_ln63_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name trunc_ln63_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_7 \
    op interface \
    ports { trunc_ln63_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name trunc_ln63_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_8 \
    op interface \
    ports { trunc_ln63_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name trunc_ln63_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_9 \
    op interface \
    ports { trunc_ln63_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name trunc_ln63_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_10 \
    op interface \
    ports { trunc_ln63_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name trunc_ln63_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_11 \
    op interface \
    ports { trunc_ln63_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name trunc_ln63_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_12 \
    op interface \
    ports { trunc_ln63_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name trunc_ln63_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_13 \
    op interface \
    ports { trunc_ln63_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name trunc_ln63_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_14 \
    op interface \
    ports { trunc_ln63_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name trunc_ln63_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_15 \
    op interface \
    ports { trunc_ln63_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name AB_block_15_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_15_2_out \
    op interface \
    ports { AB_block_15_2_out { O 512 vector } AB_block_15_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name AB_block_14_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_14_2_out \
    op interface \
    ports { AB_block_14_2_out { O 512 vector } AB_block_14_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name AB_block_13_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_13_2_out \
    op interface \
    ports { AB_block_13_2_out { O 512 vector } AB_block_13_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name AB_block_12_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_12_2_out \
    op interface \
    ports { AB_block_12_2_out { O 512 vector } AB_block_12_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name AB_block_11_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_11_2_out \
    op interface \
    ports { AB_block_11_2_out { O 512 vector } AB_block_11_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name AB_block_10_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_10_2_out \
    op interface \
    ports { AB_block_10_2_out { O 512 vector } AB_block_10_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name AB_block_9_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_9_2_out \
    op interface \
    ports { AB_block_9_2_out { O 512 vector } AB_block_9_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name AB_block_8_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_8_2_out \
    op interface \
    ports { AB_block_8_2_out { O 512 vector } AB_block_8_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name AB_block_7_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_7_2_out \
    op interface \
    ports { AB_block_7_2_out { O 512 vector } AB_block_7_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name AB_block_6_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_6_2_out \
    op interface \
    ports { AB_block_6_2_out { O 512 vector } AB_block_6_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name AB_block_5_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_5_2_out \
    op interface \
    ports { AB_block_5_2_out { O 512 vector } AB_block_5_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name AB_block_4_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_4_2_out \
    op interface \
    ports { AB_block_4_2_out { O 512 vector } AB_block_4_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name AB_block_3_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_3_2_out \
    op interface \
    ports { AB_block_3_2_out { O 512 vector } AB_block_3_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name AB_block_2_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_2_2_out \
    op interface \
    ports { AB_block_2_2_out { O 512 vector } AB_block_2_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name AB_block_1_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_1_2_out \
    op interface \
    ports { AB_block_1_2_out { O 512 vector } AB_block_1_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name AB_block_0_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_0_2_out \
    op interface \
    ports { AB_block_0_2_out { O 512 vector } AB_block_0_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName MM_flow_control_loop_pipe_sequential_init_U
set CompName MM_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix MM_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


