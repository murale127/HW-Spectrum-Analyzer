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
    id 106 \
    name data_OUT4_M_real \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_OUT4_M_real \
    op interface \
    ports { data_OUT4_M_real_address0 { O 5 vector } data_OUT4_M_real_ce0 { O 1 bit } data_OUT4_M_real_q0 { I 32 vector } data_OUT4_M_real_address1 { O 5 vector } data_OUT4_M_real_ce1 { O 1 bit } data_OUT4_M_real_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_OUT4_M_real'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 107 \
    name data_OUT4_M_imag \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_OUT4_M_imag \
    op interface \
    ports { data_OUT4_M_imag_address0 { O 5 vector } data_OUT4_M_imag_ce0 { O 1 bit } data_OUT4_M_imag_q0 { I 32 vector } data_OUT4_M_imag_address1 { O 5 vector } data_OUT4_M_imag_ce1 { O 1 bit } data_OUT4_M_imag_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_OUT4_M_imag'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 108 \
    name data_OUTfft_M_real \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename data_OUTfft_M_real \
    op interface \
    ports { data_OUTfft_M_real_address0 { O 5 vector } data_OUTfft_M_real_ce0 { O 1 bit } data_OUTfft_M_real_we0 { O 1 bit } data_OUTfft_M_real_d0 { O 32 vector } data_OUTfft_M_real_address1 { O 5 vector } data_OUTfft_M_real_ce1 { O 1 bit } data_OUTfft_M_real_we1 { O 1 bit } data_OUTfft_M_real_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_OUTfft_M_real'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 109 \
    name data_OUTfft_M_imag \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename data_OUTfft_M_imag \
    op interface \
    ports { data_OUTfft_M_imag_address0 { O 5 vector } data_OUTfft_M_imag_ce0 { O 1 bit } data_OUTfft_M_imag_we0 { O 1 bit } data_OUTfft_M_imag_d0 { O 32 vector } data_OUTfft_M_imag_address1 { O 5 vector } data_OUTfft_M_imag_ce1 { O 1 bit } data_OUTfft_M_imag_we1 { O 1 bit } data_OUTfft_M_imag_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_OUTfft_M_imag'"
}
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

