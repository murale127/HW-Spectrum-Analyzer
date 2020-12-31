set moduleName bitreverse
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
set C_modelName {bitreverse}
set C_modelType { void 0 }
set C_modelArgList {
	{ xin_M_real float 32 regular {array 32 { 1 3 } 1 1 } {global 0}  }
	{ data_OUT0_M_real float 32 regular {array 32 { 0 3 } 0 1 } {global 1}  }
	{ xin_M_imag float 32 regular {array 32 { 1 3 } 1 1 } {global 0}  }
	{ data_OUT0_M_imag float 32 regular {array 32 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "xin_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "data_OUT0_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "xin_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "data_OUT0_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ xin_M_real_address0 sc_out sc_lv 5 signal 0 } 
	{ xin_M_real_ce0 sc_out sc_logic 1 signal 0 } 
	{ xin_M_real_q0 sc_in sc_lv 32 signal 0 } 
	{ data_OUT0_M_real_address0 sc_out sc_lv 5 signal 1 } 
	{ data_OUT0_M_real_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_OUT0_M_real_we0 sc_out sc_logic 1 signal 1 } 
	{ data_OUT0_M_real_d0 sc_out sc_lv 32 signal 1 } 
	{ xin_M_imag_address0 sc_out sc_lv 5 signal 2 } 
	{ xin_M_imag_ce0 sc_out sc_logic 1 signal 2 } 
	{ xin_M_imag_q0 sc_in sc_lv 32 signal 2 } 
	{ data_OUT0_M_imag_address0 sc_out sc_lv 5 signal 3 } 
	{ data_OUT0_M_imag_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_OUT0_M_imag_we0 sc_out sc_logic 1 signal 3 } 
	{ data_OUT0_M_imag_d0 sc_out sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "xin_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "xin_M_real", "role": "address0" }} , 
 	{ "name": "xin_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin_M_real", "role": "ce0" }} , 
 	{ "name": "xin_M_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xin_M_real", "role": "q0" }} , 
 	{ "name": "data_OUT0_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT0_M_real", "role": "address0" }} , 
 	{ "name": "data_OUT0_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT0_M_real", "role": "ce0" }} , 
 	{ "name": "data_OUT0_M_real_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT0_M_real", "role": "we0" }} , 
 	{ "name": "data_OUT0_M_real_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT0_M_real", "role": "d0" }} , 
 	{ "name": "xin_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "xin_M_imag", "role": "address0" }} , 
 	{ "name": "xin_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin_M_imag", "role": "ce0" }} , 
 	{ "name": "xin_M_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xin_M_imag", "role": "q0" }} , 
 	{ "name": "data_OUT0_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT0_M_imag", "role": "address0" }} , 
 	{ "name": "data_OUT0_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT0_M_imag", "role": "ce0" }} , 
 	{ "name": "data_OUT0_M_imag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT0_M_imag", "role": "we0" }} , 
 	{ "name": "data_OUT0_M_imag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT0_M_imag", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "bitreverse",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rev_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xin_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_OUT0_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "xin_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_OUT0_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rev_32_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bitreverse {
		rev_32 {Type I LastRead -1 FirstWrite -1}
		xin_M_real {Type I LastRead 2 FirstWrite -1}
		data_OUT0_M_real {Type O LastRead -1 FirstWrite 3}
		xin_M_imag {Type I LastRead 2 FirstWrite -1}
		data_OUT0_M_imag {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "35", "Max" : "35"}
	, {"Name" : "Interval", "Min" : "35", "Max" : "35"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	xin_M_real { ap_memory {  { xin_M_real_address0 mem_address 1 5 }  { xin_M_real_ce0 mem_ce 1 1 }  { xin_M_real_q0 mem_dout 0 32 } } }
	data_OUT0_M_real { ap_memory {  { data_OUT0_M_real_address0 mem_address 1 5 }  { data_OUT0_M_real_ce0 mem_ce 1 1 }  { data_OUT0_M_real_we0 mem_we 1 1 }  { data_OUT0_M_real_d0 mem_din 1 32 } } }
	xin_M_imag { ap_memory {  { xin_M_imag_address0 mem_address 1 5 }  { xin_M_imag_ce0 mem_ce 1 1 }  { xin_M_imag_q0 mem_dout 0 32 } } }
	data_OUT0_M_imag { ap_memory {  { data_OUT0_M_imag_address0 mem_address 1 5 }  { data_OUT0_M_imag_ce0 mem_ce 1 1 }  { data_OUT0_M_imag_we0 mem_we 1 1 }  { data_OUT0_M_imag_d0 mem_din 1 32 } } }
}