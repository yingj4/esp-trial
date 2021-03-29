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
    id 14 \
    name p_inbuff_0_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_inbuff_0_V \
    op interface \
    ports { p_inbuff_0_V_address0 { O 12 vector } p_inbuff_0_V_ce0 { O 1 bit } p_inbuff_0_V_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_inbuff_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 15 \
    name p_inbuff_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_inbuff_1_V \
    op interface \
    ports { p_inbuff_1_V_address0 { O 12 vector } p_inbuff_1_V_ce0 { O 1 bit } p_inbuff_1_V_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_inbuff_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
    name p_outbuff_0_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_outbuff_0_V \
    op interface \
    ports { p_outbuff_0_V_address0 { O 6 vector } p_outbuff_0_V_ce0 { O 1 bit } p_outbuff_0_V_we0 { O 1 bit } p_outbuff_0_V_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_outbuff_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name p_outbuff_1_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_outbuff_1_V \
    op interface \
    ports { p_outbuff_1_V_address0 { O 6 vector } p_outbuff_1_V_ce0 { O 1 bit } p_outbuff_1_V_we0 { O 1 bit } p_outbuff_1_V_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_outbuff_1_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name mac_vec \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mac_vec \
    op interface \
    ports { mac_vec_dout { I 32 vector } mac_vec_empty_n { I 1 bit } mac_vec_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name mac_len \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mac_len \
    op interface \
    ports { mac_len_dout { I 32 vector } mac_len_empty_n { I 1 bit } mac_len_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
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
    id 21 \
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


