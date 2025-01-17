set moduleName FFT
set isTopModule 1
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
set C_modelName {FFT}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_IN_M_real float 32 regular {axi_slave 0}  }
	{ data_IN_M_imag float 32 regular {axi_slave 0}  }
	{ win_mode int 8 regular {axi_slave 0}  }
	{ data_OUT_M_real float 32 regular {axi_slave 1}  }
	{ data_OUT_M_imag float 32 regular {axi_slave 1}  }
	{ mag_OUT float 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_IN_M_real", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_IN._M_real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "offset" : {"in":128}, "offset_end" : {"in":255}} , 
 	{ "Name" : "data_IN_M_imag", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_IN._M_imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "offset" : {"in":256}, "offset_end" : {"in":383}} , 
 	{ "Name" : "win_mode", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "win_mode","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":384}, "offset_end" : {"in":391}} , 
 	{ "Name" : "data_OUT_M_real", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_OUT._M_real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "offset" : {"out":512}, "offset_end" : {"out":639}} , 
 	{ "Name" : "data_OUT_M_imag", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_OUT._M_imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "offset" : {"out":640}, "offset_end" : {"out":767}} , 
 	{ "Name" : "mag_OUT", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mag_OUT","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "offset" : {"out":768}, "offset_end" : {"out":895}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"FFT","role":"start","value":"0","valid_bit":"0"},{"name":"FFT","role":"continue","value":"0","valid_bit":"4"},{"name":"FFT","role":"auto_start","value":"0","valid_bit":"7"},{"name":"data_IN_M_real","role":"data","value":"128"},{"name":"data_IN_M_imag","role":"data","value":"256"},{"name":"win_mode","role":"data","value":"384"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"FFT","role":"start","value":"0","valid_bit":"0"},{"name":"FFT","role":"done","value":"0","valid_bit":"1"},{"name":"FFT","role":"idle","value":"0","valid_bit":"2"},{"name":"FFT","role":"ready","value":"0","valid_bit":"3"},{"name":"FFT","role":"auto_start","value":"0","valid_bit":"7"},{"name":"data_OUT_M_real","role":"data","value":"512"},{"name":"data_OUT_M_imag","role":"data","value":"640"},{"name":"mag_OUT","role":"data","value":"768"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "36", "44", "45", "46", "47"],
		"CDFG" : "FFT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "439", "EstimateLatencyMax" : "439",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mult_window_fu_2214"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_FFT0_fu_2234"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_FFT0_fu_2234"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_FFT0_fu_2234"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_FFT0_fu_2234"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_FFT0_fu_2234"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bitreverse_fu_2290"}],
		"Port" : [
			{"Name" : "data_IN_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_IN_M_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win_mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_OUT_M_real", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_OUT_M_imag", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mag_OUT", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Blackman32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mult_window_fu_2214", "Port" : "Blackman32"}]},
			{"Name" : "Hamm32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mult_window_fu_2214", "Port" : "Hamm32"}]},
			{"Name" : "Hann32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mult_window_fu_2214", "Port" : "Hann32"}]},
			{"Name" : "xin_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mult_window_fu_2214", "Port" : "data_IN_M_real"}]},
			{"Name" : "xin_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mult_window_fu_2214", "Port" : "data_IN_M_imag"}]},
			{"Name" : "prod_IN_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mult_window_fu_2214", "Port" : "prod_IN_M_real_2"},
					{"ID" : "44", "SubInstance" : "grp_bitreverse_fu_2290", "Port" : "prod_IN_M_real"}]},
			{"Name" : "prod_IN_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mult_window_fu_2214", "Port" : "prod_IN_M_imag_2"},
					{"ID" : "44", "SubInstance" : "grp_bitreverse_fu_2290", "Port" : "prod_IN_M_imag"}]},
			{"Name" : "data_OUT0_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_bitreverse_fu_2290", "Port" : "data_OUT0_M_real"},
					{"ID" : "36", "SubInstance" : "grp_FFT0_fu_2234", "Port" : "data_IN_M_real"}]},
			{"Name" : "data_OUT0_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_bitreverse_fu_2290", "Port" : "data_OUT0_M_imag"},
					{"ID" : "36", "SubInstance" : "grp_FFT0_fu_2234", "Port" : "data_IN_M_imag"}]},
			{"Name" : "W_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_FFT0_fu_2234", "Port" : "W_M_real"}]},
			{"Name" : "W_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_FFT0_fu_2234", "Port" : "W_M_imag"}]},
			{"Name" : "data_OUT1_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_FFT0_fu_2234", "Port" : "data_IN_M_real"}]},
			{"Name" : "data_OUT1_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_FFT0_fu_2234", "Port" : "data_IN_M_imag"}]},
			{"Name" : "data_OUT2_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_FFT0_fu_2234", "Port" : "data_IN_M_real"}]},
			{"Name" : "data_OUT2_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_FFT0_fu_2234", "Port" : "data_IN_M_imag"}]},
			{"Name" : "data_OUT3_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_FFT0_fu_2234", "Port" : "data_IN_M_real"}]},
			{"Name" : "data_OUT3_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_FFT0_fu_2234", "Port" : "data_IN_M_imag"}]},
			{"Name" : "data_OUT4_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_FFT0_fu_2234", "Port" : "data_IN_M_real"}]},
			{"Name" : "data_OUT4_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_FFT0_fu_2234", "Port" : "data_IN_M_imag"}]},
			{"Name" : "data_OUTfft_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_FFT0_fu_2234", "Port" : "data_OUT_M_real"}]},
			{"Name" : "data_OUTfft_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_FFT0_fu_2234", "Port" : "data_OUT_M_imag"}]},
			{"Name" : "xout_mag", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xin_M_real_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xin_M_imag_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.prod_IN_M_real_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.prod_IN_M_imag_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT0_M_real_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT0_M_imag_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT1_M_real_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT1_M_imag_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT2_M_real_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT2_M_imag_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT3_M_real_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT3_M_imag_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT4_M_real_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT4_M_imag_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUTfft_M_real_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUTfft_M_imag_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xout_mag_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "mult_window",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46", "EstimateLatencyMax" : "46",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_IN_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_IN_M_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win_mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "prod_IN_M_real_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "prod_IN_M_imag_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Blackman32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Hamm32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Hann32", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.Blackman32_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.Hamm32_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.Hann32_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.window_U", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.FFT_fsub_32ns_32ncud_U1", "Parent" : "19"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.FFT_fadd_32ns_32ndEe_U2", "Parent" : "19"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.FFT_fsub_32ns_32ncud_U3", "Parent" : "19"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.FFT_fadd_32ns_32ndEe_U4", "Parent" : "19"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.FFT_fmul_32ns_32neOg_U5", "Parent" : "19"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.FFT_fmul_32ns_32neOg_U6", "Parent" : "19"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.FFT_fmul_32ns_32neOg_U7", "Parent" : "19"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.FFT_fmul_32ns_32neOg_U8", "Parent" : "19"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.FFT_fmul_32ns_32neOg_U9", "Parent" : "19"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.FFT_fmul_32ns_32neOg_U10", "Parent" : "19"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.FFT_fmul_32ns_32neOg_U11", "Parent" : "19"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_window_fu_2214.FFT_fmul_32ns_32neOg_U12", "Parent" : "19"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_fu_2234", "Parent" : "0", "Child" : ["37", "38", "39", "40", "41", "42", "43"],
		"CDFG" : "FFT0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "FFT_stage", "Type" : "None", "Direction" : "I"},
			{"Name" : "pass_check", "Type" : "None", "Direction" : "I"},
			{"Name" : "index_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "pass_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_IN_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_IN_M_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT_M_real", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_OUT_M_imag", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "W_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_fu_2234.W_M_real_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_fu_2234.W_M_imag_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_fu_2234.FFT_faddfsub_32nsfYi_U29", "Parent" : "36"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_fu_2234.FFT_fsub_32ns_32ncud_U30", "Parent" : "36"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_fu_2234.FFT_fadd_32ns_32ndEe_U31", "Parent" : "36"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_fu_2234.FFT_fmul_32ns_32neOg_U32", "Parent" : "36"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_fu_2234.FFT_fmul_32ns_32neOg_U33", "Parent" : "36"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bitreverse_fu_2290", "Parent" : "0",
		"CDFG" : "bitreverse",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod_IN_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT0_M_real", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "prod_IN_M_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT0_M_imag", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fadd_32ns_32ndEe_U45", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U46", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U47", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	FFT {
		data_IN_M_real {Type I LastRead 31 FirstWrite -1}
		data_IN_M_imag {Type I LastRead 31 FirstWrite -1}
		win_mode {Type I LastRead 33 FirstWrite -1}
		data_OUT_M_real {Type O LastRead -1 FirstWrite 49}
		data_OUT_M_imag {Type O LastRead -1 FirstWrite 49}
		mag_OUT {Type O LastRead -1 FirstWrite 49}
		Blackman32 {Type I LastRead -1 FirstWrite -1}
		Hamm32 {Type I LastRead -1 FirstWrite -1}
		Hann32 {Type I LastRead -1 FirstWrite -1}
		xin_M_real {Type IO LastRead -1 FirstWrite -1}
		xin_M_imag {Type IO LastRead -1 FirstWrite -1}
		prod_IN_M_real {Type IO LastRead -1 FirstWrite -1}
		prod_IN_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT0_M_real {Type IO LastRead -1 FirstWrite -1}
		data_OUT0_M_imag {Type IO LastRead -1 FirstWrite -1}
		W_M_real {Type I LastRead -1 FirstWrite -1}
		W_M_imag {Type I LastRead -1 FirstWrite -1}
		data_OUT1_M_real {Type IO LastRead -1 FirstWrite -1}
		data_OUT1_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT2_M_real {Type IO LastRead -1 FirstWrite -1}
		data_OUT2_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT3_M_real {Type IO LastRead -1 FirstWrite -1}
		data_OUT3_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT4_M_real {Type IO LastRead -1 FirstWrite -1}
		data_OUT4_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUTfft_M_real {Type IO LastRead -1 FirstWrite -1}
		data_OUTfft_M_imag {Type IO LastRead -1 FirstWrite -1}
		xout_mag {Type IO LastRead -1 FirstWrite -1}}
	mult_window {
		data_IN_M_real {Type I LastRead 4 FirstWrite -1}
		data_IN_M_imag {Type I LastRead 4 FirstWrite -1}
		win_mode {Type I LastRead 0 FirstWrite -1}
		prod_IN_M_real_2 {Type O LastRead -1 FirstWrite 14}
		prod_IN_M_imag_2 {Type O LastRead -1 FirstWrite 14}
		Blackman32 {Type I LastRead -1 FirstWrite -1}
		Hamm32 {Type I LastRead -1 FirstWrite -1}
		Hann32 {Type I LastRead -1 FirstWrite -1}}
	FFT0 {
		FFT_stage {Type I LastRead 0 FirstWrite -1}
		pass_check {Type I LastRead 0 FirstWrite -1}
		index_shift {Type I LastRead 0 FirstWrite -1}
		pass_shift {Type I LastRead 0 FirstWrite -1}
		data_IN_M_real {Type I LastRead 11 FirstWrite -1}
		data_IN_M_imag {Type I LastRead 11 FirstWrite -1}
		data_OUT_M_real {Type O LastRead -1 FirstWrite 18}
		data_OUT_M_imag {Type O LastRead -1 FirstWrite 19}
		W_M_real {Type I LastRead -1 FirstWrite -1}
		W_M_imag {Type I LastRead -1 FirstWrite -1}}
	bitreverse {
		prod_IN_M_real {Type I LastRead 16 FirstWrite -1}
		data_OUT0_M_real {Type O LastRead -1 FirstWrite 1}
		prod_IN_M_imag {Type I LastRead 16 FirstWrite -1}
		data_OUT0_M_imag {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "439", "Max" : "439"}
	, {"Name" : "Interval", "Min" : "440", "Max" : "440"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
