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
    name AB_block_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_47 \
    op interface \
    ports { AB_block_47 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name AB_block_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_46 \
    op interface \
    ports { AB_block_46 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name AB_block_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_45 \
    op interface \
    ports { AB_block_45 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name AB_block_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_44 \
    op interface \
    ports { AB_block_44 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name AB_block_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_43 \
    op interface \
    ports { AB_block_43 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name AB_block_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_42 \
    op interface \
    ports { AB_block_42 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name AB_block_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_41 \
    op interface \
    ports { AB_block_41 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name AB_block_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_40 \
    op interface \
    ports { AB_block_40 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name AB_block_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_39 \
    op interface \
    ports { AB_block_39 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name AB_block_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_38 \
    op interface \
    ports { AB_block_38 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name AB_block_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_37 \
    op interface \
    ports { AB_block_37 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name AB_block_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_36 \
    op interface \
    ports { AB_block_36 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name AB_block_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_35 \
    op interface \
    ports { AB_block_35 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name AB_block_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_34 \
    op interface \
    ports { AB_block_34 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name AB_block_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_33 \
    op interface \
    ports { AB_block_33 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name AB_block_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_32 \
    op interface \
    ports { AB_block_32 { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name A_line \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_line \
    op interface \
    ports { A_line { I 512 vector } } \
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
    id 54 \
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
    id 55 \
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
    id 56 \
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
    id 57 \
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
    id 58 \
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
    id 59 \
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
    id 60 \
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
    id 61 \
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
    id 62 \
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
    id 63 \
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
    id 64 \
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
    id 65 \
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
    id 66 \
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
    id 67 \
    name trunc_ln63_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln63_16 \
    op interface \
    ports { trunc_ln63_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name AB_block_63_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_63_out \
    op interface \
    ports { AB_block_63_out { O 512 vector } AB_block_63_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name AB_block_62_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_62_out \
    op interface \
    ports { AB_block_62_out { O 512 vector } AB_block_62_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name AB_block_61_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_61_out \
    op interface \
    ports { AB_block_61_out { O 512 vector } AB_block_61_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name AB_block_60_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_60_out \
    op interface \
    ports { AB_block_60_out { O 512 vector } AB_block_60_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name AB_block_59_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_59_out \
    op interface \
    ports { AB_block_59_out { O 512 vector } AB_block_59_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name AB_block_58_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_58_out \
    op interface \
    ports { AB_block_58_out { O 512 vector } AB_block_58_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name AB_block_57_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_57_out \
    op interface \
    ports { AB_block_57_out { O 512 vector } AB_block_57_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name AB_block_56_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_56_out \
    op interface \
    ports { AB_block_56_out { O 512 vector } AB_block_56_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name AB_block_55_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_55_out \
    op interface \
    ports { AB_block_55_out { O 512 vector } AB_block_55_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name AB_block_54_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_54_out \
    op interface \
    ports { AB_block_54_out { O 512 vector } AB_block_54_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name AB_block_53_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_53_out \
    op interface \
    ports { AB_block_53_out { O 512 vector } AB_block_53_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name AB_block_52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_52_out \
    op interface \
    ports { AB_block_52_out { O 512 vector } AB_block_52_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name AB_block_51_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_51_out \
    op interface \
    ports { AB_block_51_out { O 512 vector } AB_block_51_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name AB_block_50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_50_out \
    op interface \
    ports { AB_block_50_out { O 512 vector } AB_block_50_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name AB_block_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_49_out \
    op interface \
    ports { AB_block_49_out { O 512 vector } AB_block_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name AB_block_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_block_48_out \
    op interface \
    ports { AB_block_48_out { O 512 vector } AB_block_48_out_ap_vld { O 1 bit } } \
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


