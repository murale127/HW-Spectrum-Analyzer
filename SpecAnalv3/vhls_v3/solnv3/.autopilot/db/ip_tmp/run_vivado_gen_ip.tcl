create_project prj -part xc7z020-clg400-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3/vhls_v3/solnv3/syn/verilog/FFT_ap_fadd_3_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips FFT_ap_fadd_3_full_dsp_32]]
}
source "/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3/vhls_v3/solnv3/syn/verilog/FFT_ap_fmul_2_max_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips FFT_ap_fmul_2_max_dsp_32]]
}
source "/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3/vhls_v3/solnv3/syn/verilog/FFT_ap_flog_11_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips FFT_ap_flog_11_full_dsp_32]]
}
source "/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3/vhls_v3/solnv3/syn/verilog/FFT_ap_fsub_3_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips FFT_ap_fsub_3_full_dsp_32]]
}
