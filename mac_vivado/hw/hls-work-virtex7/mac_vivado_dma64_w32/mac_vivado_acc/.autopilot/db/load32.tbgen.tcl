set moduleName load32
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
set C_modelName {load32}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_inbuff_0_V int 32 regular {array 3200 { 0 3 } 0 1 }  }
	{ p_inbuff_1_V int 32 regular {array 3200 { 0 3 } 0 1 }  }
	{ in1_word_V int 64 regular {fifo 0 volatile }  }
	{ mac_vec int 32 regular  }
	{ mac_len int 32 regular  }
	{ load_ctrl int 96 regular {pointer 1}  }
	{ chunk int 32 regular  }
	{ conf_info_mac_n int 32 regular  }
	{ mac_vec_out int 32 regular {fifo 1}  }
	{ mac_len_out int 32 regular {fifo 1}  }
	{ chunk_out int 32 regular {fifo 1}  }
	{ conf_info_mac_n_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_inbuff_0_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_inbuff_1_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in1_word_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mac_vec", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_len", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "load_ctrl", "interface" : "wire", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "chunk", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conf_info_mac_n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_vec_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_len_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "chunk_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conf_info_mac_n_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_inbuff_0_V_address0 sc_out sc_lv 12 signal 0 } 
	{ p_inbuff_0_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_inbuff_0_V_we0 sc_out sc_logic 1 signal 0 } 
	{ p_inbuff_0_V_d0 sc_out sc_lv 32 signal 0 } 
	{ p_inbuff_1_V_address0 sc_out sc_lv 12 signal 1 } 
	{ p_inbuff_1_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ p_inbuff_1_V_we0 sc_out sc_logic 1 signal 1 } 
	{ p_inbuff_1_V_d0 sc_out sc_lv 32 signal 1 } 
	{ in1_word_V_dout sc_in sc_lv 64 signal 2 } 
	{ in1_word_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ in1_word_V_read sc_out sc_logic 1 signal 2 } 
	{ mac_vec sc_in sc_lv 32 signal 3 } 
	{ mac_len sc_in sc_lv 32 signal 4 } 
	{ load_ctrl sc_out sc_lv 96 signal 5 } 
	{ load_ctrl_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ load_ctrl_ap_ack sc_in sc_logic 1 outacc 5 } 
	{ chunk sc_in sc_lv 32 signal 6 } 
	{ conf_info_mac_n sc_in sc_lv 32 signal 7 } 
	{ mac_vec_out_din sc_out sc_lv 32 signal 8 } 
	{ mac_vec_out_full_n sc_in sc_logic 1 signal 8 } 
	{ mac_vec_out_write sc_out sc_logic 1 signal 8 } 
	{ mac_len_out_din sc_out sc_lv 32 signal 9 } 
	{ mac_len_out_full_n sc_in sc_logic 1 signal 9 } 
	{ mac_len_out_write sc_out sc_logic 1 signal 9 } 
	{ chunk_out_din sc_out sc_lv 32 signal 10 } 
	{ chunk_out_full_n sc_in sc_logic 1 signal 10 } 
	{ chunk_out_write sc_out sc_logic 1 signal 10 } 
	{ conf_info_mac_n_out_din sc_out sc_lv 32 signal 11 } 
	{ conf_info_mac_n_out_full_n sc_in sc_logic 1 signal 11 } 
	{ conf_info_mac_n_out_write sc_out sc_logic 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_inbuff_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_inbuff_0_V", "role": "address0" }} , 
 	{ "name": "p_inbuff_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inbuff_0_V", "role": "ce0" }} , 
 	{ "name": "p_inbuff_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inbuff_0_V", "role": "we0" }} , 
 	{ "name": "p_inbuff_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_inbuff_0_V", "role": "d0" }} , 
 	{ "name": "p_inbuff_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_inbuff_1_V", "role": "address0" }} , 
 	{ "name": "p_inbuff_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inbuff_1_V", "role": "ce0" }} , 
 	{ "name": "p_inbuff_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inbuff_1_V", "role": "we0" }} , 
 	{ "name": "p_inbuff_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_inbuff_1_V", "role": "d0" }} , 
 	{ "name": "in1_word_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in1_word_V", "role": "dout" }} , 
 	{ "name": "in1_word_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1_word_V", "role": "empty_n" }} , 
 	{ "name": "in1_word_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1_word_V", "role": "read" }} , 
 	{ "name": "mac_vec", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_vec", "role": "default" }} , 
 	{ "name": "mac_len", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_len", "role": "default" }} , 
 	{ "name": "load_ctrl", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "load_ctrl", "role": "default" }} , 
 	{ "name": "load_ctrl_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "load_ctrl", "role": "ap_vld" }} , 
 	{ "name": "load_ctrl_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "load_ctrl", "role": "ap_ack" }} , 
 	{ "name": "chunk", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "chunk", "role": "default" }} , 
 	{ "name": "conf_info_mac_n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conf_info_mac_n", "role": "default" }} , 
 	{ "name": "mac_vec_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_vec_out", "role": "din" }} , 
 	{ "name": "mac_vec_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_vec_out", "role": "full_n" }} , 
 	{ "name": "mac_vec_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_vec_out", "role": "write" }} , 
 	{ "name": "mac_len_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_len_out", "role": "din" }} , 
 	{ "name": "mac_len_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_len_out", "role": "full_n" }} , 
 	{ "name": "mac_len_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_len_out", "role": "write" }} , 
 	{ "name": "chunk_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "chunk_out", "role": "din" }} , 
 	{ "name": "chunk_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "chunk_out", "role": "full_n" }} , 
 	{ "name": "chunk_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "chunk_out", "role": "write" }} , 
 	{ "name": "conf_info_mac_n_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conf_info_mac_n_out", "role": "din" }} , 
 	{ "name": "conf_info_mac_n_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conf_info_mac_n_out", "role": "full_n" }} , 
 	{ "name": "conf_info_mac_n_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conf_info_mac_n_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "load32",
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
			{"Name" : "p_inbuff_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "p_inbuff_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
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
			{"Name" : "mac_vec_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_vec_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_len_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_len_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "chunk_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "chunk_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conf_info_mac_n_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "conf_info_mac_n_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_forward_load_ctrl_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load32 {
		p_inbuff_0_V {Type O LastRead -1 FirstWrite 3}
		p_inbuff_1_V {Type O LastRead -1 FirstWrite 3}
		in1_word_V {Type I LastRead 3 FirstWrite -1}
		mac_vec {Type I LastRead 0 FirstWrite -1}
		mac_len {Type I LastRead 0 FirstWrite -1}
		load_ctrl {Type O LastRead -1 FirstWrite 1}
		chunk {Type I LastRead 0 FirstWrite -1}
		conf_info_mac_n {Type I LastRead 0 FirstWrite -1}
		mac_vec_out {Type O LastRead -1 FirstWrite 0}
		mac_len_out {Type O LastRead -1 FirstWrite 0}
		chunk_out {Type O LastRead -1 FirstWrite 0}
		conf_info_mac_n_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_inbuff_0_V { ap_memory {  { p_inbuff_0_V_address0 mem_address 1 12 }  { p_inbuff_0_V_ce0 mem_ce 1 1 }  { p_inbuff_0_V_we0 mem_we 1 1 }  { p_inbuff_0_V_d0 mem_din 1 32 } } }
	p_inbuff_1_V { ap_memory {  { p_inbuff_1_V_address0 mem_address 1 12 }  { p_inbuff_1_V_ce0 mem_ce 1 1 }  { p_inbuff_1_V_we0 mem_we 1 1 }  { p_inbuff_1_V_d0 mem_din 1 32 } } }
	in1_word_V { ap_fifo {  { in1_word_V_dout fifo_data 0 64 }  { in1_word_V_empty_n fifo_status 0 1 }  { in1_word_V_read fifo_update 1 1 } } }
	mac_vec { ap_none {  { mac_vec in_data 0 32 } } }
	mac_len { ap_none {  { mac_len in_data 0 32 } } }
	load_ctrl { ap_hs {  { load_ctrl out_data 1 96 }  { load_ctrl_ap_vld out_vld 1 1 }  { load_ctrl_ap_ack out_acc 0 1 } } }
	chunk { ap_none {  { chunk in_data 0 32 } } }
	conf_info_mac_n { ap_none {  { conf_info_mac_n in_data 0 32 } } }
	mac_vec_out { ap_fifo {  { mac_vec_out_din fifo_data 1 32 }  { mac_vec_out_full_n fifo_status 0 1 }  { mac_vec_out_write fifo_update 1 1 } } }
	mac_len_out { ap_fifo {  { mac_len_out_din fifo_data 1 32 }  { mac_len_out_full_n fifo_status 0 1 }  { mac_len_out_write fifo_update 1 1 } } }
	chunk_out { ap_fifo {  { chunk_out_din fifo_data 1 32 }  { chunk_out_full_n fifo_status 0 1 }  { chunk_out_write fifo_update 1 1 } } }
	conf_info_mac_n_out { ap_fifo {  { conf_info_mac_n_out_din fifo_data 1 32 }  { conf_info_mac_n_out_full_n fifo_status 0 1 }  { conf_info_mac_n_out_write fifo_update 1 1 } } }
}
