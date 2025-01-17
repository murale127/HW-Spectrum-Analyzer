set moduleName FFT0119
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {FFT0119}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_OUT2_M_imag float 32 regular {array 32 { 0 0 } 0 1 }  }
	{ data_OUT2_M_real float 32 regular {array 32 { 0 0 } 0 1 }  }
	{ data_OUT1_M_real float 32 regular {array 32 { 1 1 } 1 1 } {global 0}  }
	{ data_OUT1_M_imag float 32 regular {array 32 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_OUT2_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_OUT2_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_OUT1_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "data_OUT1_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_OUT2_M_imag_address0 sc_out sc_lv 5 signal 0 } 
	{ data_OUT2_M_imag_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_OUT2_M_imag_we0 sc_out sc_logic 1 signal 0 } 
	{ data_OUT2_M_imag_d0 sc_out sc_lv 32 signal 0 } 
	{ data_OUT2_M_imag_address1 sc_out sc_lv 5 signal 0 } 
	{ data_OUT2_M_imag_ce1 sc_out sc_logic 1 signal 0 } 
	{ data_OUT2_M_imag_we1 sc_out sc_logic 1 signal 0 } 
	{ data_OUT2_M_imag_d1 sc_out sc_lv 32 signal 0 } 
	{ data_OUT2_M_real_address0 sc_out sc_lv 5 signal 1 } 
	{ data_OUT2_M_real_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_OUT2_M_real_we0 sc_out sc_logic 1 signal 1 } 
	{ data_OUT2_M_real_d0 sc_out sc_lv 32 signal 1 } 
	{ data_OUT2_M_real_address1 sc_out sc_lv 5 signal 1 } 
	{ data_OUT2_M_real_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_OUT2_M_real_we1 sc_out sc_logic 1 signal 1 } 
	{ data_OUT2_M_real_d1 sc_out sc_lv 32 signal 1 } 
	{ data_OUT1_M_real_address0 sc_out sc_lv 5 signal 2 } 
	{ data_OUT1_M_real_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_OUT1_M_real_q0 sc_in sc_lv 32 signal 2 } 
	{ data_OUT1_M_real_address1 sc_out sc_lv 5 signal 2 } 
	{ data_OUT1_M_real_ce1 sc_out sc_logic 1 signal 2 } 
	{ data_OUT1_M_real_q1 sc_in sc_lv 32 signal 2 } 
	{ data_OUT1_M_imag_address0 sc_out sc_lv 5 signal 3 } 
	{ data_OUT1_M_imag_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_OUT1_M_imag_q0 sc_in sc_lv 32 signal 3 } 
	{ data_OUT1_M_imag_address1 sc_out sc_lv 5 signal 3 } 
	{ data_OUT1_M_imag_ce1 sc_out sc_logic 1 signal 3 } 
	{ data_OUT1_M_imag_q1 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_OUT2_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT2_M_imag", "role": "address0" }} , 
 	{ "name": "data_OUT2_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT2_M_imag", "role": "ce0" }} , 
 	{ "name": "data_OUT2_M_imag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT2_M_imag", "role": "we0" }} , 
 	{ "name": "data_OUT2_M_imag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT2_M_imag", "role": "d0" }} , 
 	{ "name": "data_OUT2_M_imag_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT2_M_imag", "role": "address1" }} , 
 	{ "name": "data_OUT2_M_imag_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT2_M_imag", "role": "ce1" }} , 
 	{ "name": "data_OUT2_M_imag_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT2_M_imag", "role": "we1" }} , 
 	{ "name": "data_OUT2_M_imag_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT2_M_imag", "role": "d1" }} , 
 	{ "name": "data_OUT2_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT2_M_real", "role": "address0" }} , 
 	{ "name": "data_OUT2_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT2_M_real", "role": "ce0" }} , 
 	{ "name": "data_OUT2_M_real_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT2_M_real", "role": "we0" }} , 
 	{ "name": "data_OUT2_M_real_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT2_M_real", "role": "d0" }} , 
 	{ "name": "data_OUT2_M_real_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT2_M_real", "role": "address1" }} , 
 	{ "name": "data_OUT2_M_real_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT2_M_real", "role": "ce1" }} , 
 	{ "name": "data_OUT2_M_real_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT2_M_real", "role": "we1" }} , 
 	{ "name": "data_OUT2_M_real_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT2_M_real", "role": "d1" }} , 
 	{ "name": "data_OUT1_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT1_M_real", "role": "address0" }} , 
 	{ "name": "data_OUT1_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT1_M_real", "role": "ce0" }} , 
 	{ "name": "data_OUT1_M_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT1_M_real", "role": "q0" }} , 
 	{ "name": "data_OUT1_M_real_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT1_M_real", "role": "address1" }} , 
 	{ "name": "data_OUT1_M_real_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT1_M_real", "role": "ce1" }} , 
 	{ "name": "data_OUT1_M_real_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT1_M_real", "role": "q1" }} , 
 	{ "name": "data_OUT1_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT1_M_imag", "role": "address0" }} , 
 	{ "name": "data_OUT1_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT1_M_imag", "role": "ce0" }} , 
 	{ "name": "data_OUT1_M_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT1_M_imag", "role": "q0" }} , 
 	{ "name": "data_OUT1_M_imag_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT1_M_imag", "role": "address1" }} , 
 	{ "name": "data_OUT1_M_imag_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT1_M_imag", "role": "ce1" }} , 
 	{ "name": "data_OUT1_M_imag_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT1_M_imag", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "FFT0119",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_OUT2_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_OUT2_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "W_M_real129", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag125", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT1_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_OUT1_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_M_real129_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_M_imag125_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fsub_32ns_32ncud_U53", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fadd_32ns_32ndEe_U54", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fsub_32ns_32ncud_U55", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fsub_32ns_32ncud_U56", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fadd_32ns_32ndEe_U57", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fadd_32ns_32ndEe_U58", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U59", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U60", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U61", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U62", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	FFT0119 {
		data_OUT2_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT2_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real129 {Type I LastRead -1 FirstWrite -1}
		W_M_imag125 {Type I LastRead -1 FirstWrite -1}
		data_OUT1_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT1_M_imag {Type I LastRead 10 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33", "Max" : "33"}
	, {"Name" : "Interval", "Min" : "33", "Max" : "33"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_OUT2_M_imag { ap_memory {  { data_OUT2_M_imag_address0 mem_address 1 5 }  { data_OUT2_M_imag_ce0 mem_ce 1 1 }  { data_OUT2_M_imag_we0 mem_we 1 1 }  { data_OUT2_M_imag_d0 mem_din 1 32 }  { data_OUT2_M_imag_address1 MemPortADDR2 1 5 }  { data_OUT2_M_imag_ce1 MemPortCE2 1 1 }  { data_OUT2_M_imag_we1 MemPortWE2 1 1 }  { data_OUT2_M_imag_d1 MemPortDIN2 1 32 } } }
	data_OUT2_M_real { ap_memory {  { data_OUT2_M_real_address0 mem_address 1 5 }  { data_OUT2_M_real_ce0 mem_ce 1 1 }  { data_OUT2_M_real_we0 mem_we 1 1 }  { data_OUT2_M_real_d0 mem_din 1 32 }  { data_OUT2_M_real_address1 MemPortADDR2 1 5 }  { data_OUT2_M_real_ce1 MemPortCE2 1 1 }  { data_OUT2_M_real_we1 MemPortWE2 1 1 }  { data_OUT2_M_real_d1 MemPortDIN2 1 32 } } }
	data_OUT1_M_real { ap_memory {  { data_OUT1_M_real_address0 mem_address 1 5 }  { data_OUT1_M_real_ce0 mem_ce 1 1 }  { data_OUT1_M_real_q0 mem_dout 0 32 }  { data_OUT1_M_real_address1 MemPortADDR2 1 5 }  { data_OUT1_M_real_ce1 MemPortCE2 1 1 }  { data_OUT1_M_real_q1 MemPortDOUT2 0 32 } } }
	data_OUT1_M_imag { ap_memory {  { data_OUT1_M_imag_address0 mem_address 1 5 }  { data_OUT1_M_imag_ce0 mem_ce 1 1 }  { data_OUT1_M_imag_q0 mem_dout 0 32 }  { data_OUT1_M_imag_address1 MemPortADDR2 1 5 }  { data_OUT1_M_imag_ce1 MemPortCE2 1 1 }  { data_OUT1_M_imag_q1 MemPortDOUT2 0 32 } } }
}
