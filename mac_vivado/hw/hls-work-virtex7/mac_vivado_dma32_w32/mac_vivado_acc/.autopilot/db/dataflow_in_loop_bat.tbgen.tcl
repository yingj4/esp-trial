set moduleName dataflow_in_loop_bat
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dataflow_in_loop_bat}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1_word_V int 32 regular {fifo 0 volatile }  }
	{ conf_info_mac_vec int 32 regular  }
	{ conf_info_mac_len int 32 regular  }
	{ load_ctrl int 96 regular {pointer 1}  }
	{ b_0 int 32 regular  }
	{ out_word_V int 32 regular {fifo 1}  }
	{ conf_info_mac_n int 32 regular  }
	{ store_ctrl int 96 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1_word_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conf_info_mac_vec", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conf_info_mac_len", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "load_ctrl", "interface" : "wire", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_word_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conf_info_mac_n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "store_ctrl", "interface" : "wire", "bitwidth" : 96, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ in1_word_V_dout sc_in sc_lv 32 signal 0 } 
	{ in1_word_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in1_word_V_read sc_out sc_logic 1 signal 0 } 
	{ conf_info_mac_vec sc_in sc_lv 32 signal 1 } 
	{ conf_info_mac_len sc_in sc_lv 32 signal 2 } 
	{ load_ctrl sc_out sc_lv 96 signal 3 } 
	{ b_0 sc_in sc_lv 32 signal 4 } 
	{ out_word_V_din sc_out sc_lv 32 signal 5 } 
	{ out_word_V_full_n sc_in sc_logic 1 signal 5 } 
	{ out_word_V_write sc_out sc_logic 1 signal 5 } 
	{ conf_info_mac_n sc_in sc_lv 32 signal 6 } 
	{ store_ctrl sc_out sc_lv 96 signal 7 } 
	{ conf_info_mac_vec_ap_vld sc_in sc_logic 1 invld 1 } 
	{ conf_info_mac_len_ap_vld sc_in sc_logic 1 invld 2 } 
	{ load_ctrl_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ load_ctrl_ap_ack sc_in sc_logic 1 outacc 3 } 
	{ b_0_ap_vld sc_in sc_logic 1 invld 4 } 
	{ conf_info_mac_n_ap_vld sc_in sc_logic 1 invld 6 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ store_ctrl_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ store_ctrl_ap_ack sc_in sc_logic 1 outacc 7 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "in1_word_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1_word_V", "role": "dout" }} , 
 	{ "name": "in1_word_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1_word_V", "role": "empty_n" }} , 
 	{ "name": "in1_word_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1_word_V", "role": "read" }} , 
 	{ "name": "conf_info_mac_vec", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conf_info_mac_vec", "role": "default" }} , 
 	{ "name": "conf_info_mac_len", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conf_info_mac_len", "role": "default" }} , 
 	{ "name": "load_ctrl", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "load_ctrl", "role": "default" }} , 
 	{ "name": "b_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_0", "role": "default" }} , 
 	{ "name": "out_word_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_word_V", "role": "din" }} , 
 	{ "name": "out_word_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_word_V", "role": "full_n" }} , 
 	{ "name": "out_word_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_word_V", "role": "write" }} , 
 	{ "name": "conf_info_mac_n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conf_info_mac_n", "role": "default" }} , 
 	{ "name": "store_ctrl", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "store_ctrl", "role": "default" }} , 
 	{ "name": "conf_info_mac_vec_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "conf_info_mac_vec", "role": "ap_vld" }} , 
 	{ "name": "conf_info_mac_len_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "conf_info_mac_len", "role": "ap_vld" }} , 
 	{ "name": "load_ctrl_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "load_ctrl", "role": "ap_vld" }} , 
 	{ "name": "load_ctrl_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "load_ctrl", "role": "ap_ack" }} , 
 	{ "name": "b_0_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "b_0", "role": "ap_vld" }} , 
 	{ "name": "conf_info_mac_n_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "conf_info_mac_n", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "store_ctrl_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "store_ctrl", "role": "ap_vld" }} , 
 	{ "name": "store_ctrl_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "store_ctrl", "role": "ap_ack" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "6", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "dataflow_in_loop_bat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "load28_U0"}],
		"OutputProcess" : [
			{"ID" : "3", "Name" : "load28_U0"},
			{"ID" : "6", "Name" : "store_U0"}],
		"Port" : [
			{"Name" : "in1_word_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "load28_U0", "Port" : "in1_word_V"}]},
			{"Name" : "conf_info_mac_vec", "Type" : "None", "Direction" : "I"},
			{"Name" : "conf_info_mac_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "load_ctrl", "Type" : "HS", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "load28_U0", "Port" : "load_ctrl"}]},
			{"Name" : "b_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_word_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "store_U0", "Port" : "out_word_V"}]},
			{"Name" : "conf_info_mac_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "store_ctrl", "Type" : "HS", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "store_U0", "Port" : "store_ctrl"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_inbuff_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_outbuff_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.load28_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "load28",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_inbuff_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "1"},
			{"Name" : "in1_word_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in1_word_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_vec", "Type" : "None", "Direction" : "I"},
			{"Name" : "mac_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "load_ctrl", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "load_ctrl_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "chunk", "Type" : "None", "Direction" : "I"},
			{"Name" : "conf_info_mac_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "mac_vec_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "8",
				"BlockSignal" : [
					{"Name" : "mac_vec_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_len_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "mac_len_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "chunk_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "10",
				"BlockSignal" : [
					{"Name" : "chunk_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conf_info_mac_n_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "conf_info_mac_n_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load28_U0.regslice_forward_load_ctrl_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_U0", "Parent" : "0",
		"CDFG" : "compute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_inbuff_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "1"},
			{"Name" : "mac_vec", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "8",
				"BlockSignal" : [
					{"Name" : "mac_vec_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_len", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "mac_len_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outbuff_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "2"},
			{"Name" : "mac_vec_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "mac_vec_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_len_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "mac_len_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.store_U0", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "store",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_outbuff_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "2"},
			{"Name" : "out_word_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_word_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_n", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "mac_n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_vec", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "mac_vec_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_len", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "mac_len_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "store_ctrl", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "store_ctrl_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "chunk", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "10",
				"BlockSignal" : [
					{"Name" : "chunk_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.store_U0.regslice_forward_store_ctrl_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conf_info_mac_vec_c_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conf_info_mac_len_c_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_0_c_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conf_info_mac_n_c_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conf_info_mac_vec_c1_1_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conf_info_mac_len_c2_1_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_in_loop_bat {
		in1_word_V {Type I LastRead 3 FirstWrite -1}
		conf_info_mac_vec {Type I LastRead 0 FirstWrite -1}
		conf_info_mac_len {Type I LastRead 0 FirstWrite -1}
		load_ctrl {Type O LastRead -1 FirstWrite 1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		out_word_V {Type O LastRead -1 FirstWrite 4}
		conf_info_mac_n {Type I LastRead 0 FirstWrite -1}
		store_ctrl {Type O LastRead -1 FirstWrite 1}}
	load28 {
		p_inbuff_V {Type O LastRead -1 FirstWrite 3}
		in1_word_V {Type I LastRead 3 FirstWrite -1}
		mac_vec {Type I LastRead 0 FirstWrite -1}
		mac_len {Type I LastRead 0 FirstWrite -1}
		load_ctrl {Type O LastRead -1 FirstWrite 1}
		chunk {Type I LastRead 0 FirstWrite -1}
		conf_info_mac_n {Type I LastRead 0 FirstWrite -1}
		mac_vec_out {Type O LastRead -1 FirstWrite 0}
		mac_len_out {Type O LastRead -1 FirstWrite 0}
		chunk_out {Type O LastRead -1 FirstWrite 0}
		conf_info_mac_n_out {Type O LastRead -1 FirstWrite 0}}
	compute {
		p_inbuff_V {Type I LastRead 4 FirstWrite -1}
		mac_vec {Type I LastRead 0 FirstWrite -1}
		mac_len {Type I LastRead 0 FirstWrite -1}
		p_outbuff_V {Type O LastRead -1 FirstWrite 2}
		mac_vec_out {Type O LastRead -1 FirstWrite 0}
		mac_len_out {Type O LastRead -1 FirstWrite 0}}
	store {
		p_outbuff_V {Type I LastRead 3 FirstWrite -1}
		out_word_V {Type O LastRead -1 FirstWrite 4}
		mac_n {Type I LastRead 0 FirstWrite -1}
		mac_vec {Type I LastRead 0 FirstWrite -1}
		mac_len {Type I LastRead 0 FirstWrite -1}
		store_ctrl {Type O LastRead -1 FirstWrite 1}
		chunk {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in1_word_V { ap_fifo {  { in1_word_V_dout fifo_data 0 32 }  { in1_word_V_empty_n fifo_status 0 1 }  { in1_word_V_read fifo_update 1 1 } } }
	conf_info_mac_vec { ap_none {  { conf_info_mac_vec in_data 0 32 }  { conf_info_mac_vec_ap_vld in_vld 0 1 } } }
	conf_info_mac_len { ap_none {  { conf_info_mac_len in_data 0 32 }  { conf_info_mac_len_ap_vld in_vld 0 1 } } }
	load_ctrl { ap_hs {  { load_ctrl out_data 1 96 }  { load_ctrl_ap_vld out_vld 1 1 }  { load_ctrl_ap_ack out_acc 0 1 } } }
	b_0 { ap_none {  { b_0 in_data 0 32 }  { b_0_ap_vld in_vld 0 1 } } }
	out_word_V { ap_fifo {  { out_word_V_din fifo_data 1 32 }  { out_word_V_full_n fifo_status 0 1 }  { out_word_V_write fifo_update 1 1 } } }
	conf_info_mac_n { ap_none {  { conf_info_mac_n in_data 0 32 }  { conf_info_mac_n_ap_vld in_vld 0 1 } } }
	store_ctrl { ap_hs {  { store_ctrl out_data 1 96 }  { store_ctrl_ap_vld out_vld 1 1 }  { store_ctrl_ap_ack out_acc 0 1 } } }
}
