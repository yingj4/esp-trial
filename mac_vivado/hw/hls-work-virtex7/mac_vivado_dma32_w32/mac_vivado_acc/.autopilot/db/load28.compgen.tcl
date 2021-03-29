# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1 \
    name p_inbuff_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_inbuff_V \
    op interface \
    ports { p_inbuff_V_address0 { O 13 vector } p_inbuff_V_ce0 { O 1 bit } p_inbuff_V_we0 { O 1 bit } p_inbuff_V_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_inbuff_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name in1_word_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in1_word_V \
    op interface \
    ports { in1_word_V_dout { I 32 vector } in1_word_V_empty_n { I 1 bit } in1_word_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name mac_vec \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mac_vec \
    op interface \
    ports { mac_vec { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name mac_len \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mac_len \
    op interface \
    ports { mac_len { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name load_ctrl \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_load_ctrl \
    op interface \
    ports { load_ctrl { O 96 vector } load_ctrl_ap_vld { O 1 bit } load_ctrl_ap_ack { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name chunk \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_chunk \
    op interface \
    ports { chunk { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name conf_info_mac_n \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conf_info_mac_n \
    op interface \
    ports { conf_info_mac_n { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name mac_vec_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mac_vec_out \
    op interface \
    ports { mac_vec_out_din { O 32 vector } mac_vec_out_full_n { I 1 bit } mac_vec_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name mac_len_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mac_len_out \
    op interface \
    ports { mac_len_out_din { O 32 vector } mac_len_out_full_n { I 1 bit } mac_len_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name chunk_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_chunk_out \
    op interface \
    ports { chunk_out_din { O 32 vector } chunk_out_full_n { I 1 bit } chunk_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name conf_info_mac_n_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conf_info_mac_n_out \
    op interface \
    ports { conf_info_mac_n_out_din { O 32 vector } conf_info_mac_n_out_full_n { I 1 bit } conf_info_mac_n_out_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


# RegSlice definition:
set ID 12
set RegSliceName regslice_core
set RegSliceInstName regslice_core_U
set CoreName ap_simcore_regslice_core
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


