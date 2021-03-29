set moduleName store
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
set C_modelName {store}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_outbuff_V int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ out_word_V int 32 regular {fifo 1}  }
	{ mac_n int 32 regular {fifo 0}  }
	{ mac_vec int 32 regular {fifo 0}  }
	{ mac_len int 32 regular {fifo 0}  }
	{ store_ctrl int 96 regular {pointer 1}  }
	{ chunk int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_outbuff_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_word_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_n", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_vec", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_len", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "store_ctrl", "interface" : "wire", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "chunk", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_outbuff_V_address0 sc_out sc_lv 7 signal 0 } 
	{ p_outbuff_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_outbuff_V_q0 sc_in sc_lv 32 signal 0 } 
	{ out_word_V_din sc_out sc_lv 32 signal 1 } 
	{ out_word_V_full_n sc_in sc_logic 1 signal 1 } 
	{ out_word_V_write sc_out sc_logic 1 signal 1 } 
	{ mac_n_dout sc_in sc_lv 32 signal 2 } 
	{ mac_n_empty_n sc_in sc_logic 1 signal 2 } 
	{ mac_n_read sc_out sc_logic 1 signal 2 } 
	{ mac_vec_dout sc_in sc_lv 32 signal 3 } 
	{ mac_vec_empty_n sc_in sc_logic 1 signal 3 } 
	{ mac_vec_read sc_out sc_logic 1 signal 3 } 
	{ mac_len_dout sc_in sc_lv 32 signal 4 } 
	{ mac_len_empty_n sc_in sc_logic 1 signal 4 } 
	{ mac_len_read sc_out sc_logic 1 signal 4 } 
	{ store_ctrl sc_out sc_lv 96 signal 5 } 
	{ store_ctrl_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ store_ctrl_ap_ack sc_in sc_logic 1 outacc 5 } 
	{ chunk_dout sc_in sc_lv 32 signal 6 } 
	{ chunk_empty_n sc_in sc_logic 1 signal 6 } 
	{ chunk_read sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_outbuff_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_outbuff_V", "role": "address0" }} , 
 	{ "name": "p_outbuff_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outbuff_V", "role": "ce0" }} , 
 	{ "name": "p_outbuff_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_outbuff_V", "role": "q0" }} , 
 	{ "name": "out_word_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_word_V", "role": "din" }} , 
 	{ "name": "out_word_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_word_V", "role": "full_n" }} , 
 	{ "name": "out_word_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_word_V", "role": "write" }} , 
 	{ "name": "mac_n_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_n", "role": "dout" }} , 
 	{ "name": "mac_n_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_n", "role": "empty_n" }} , 
 	{ "name": "mac_n_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_n", "role": "read" }} , 
 	{ "name": "mac_vec_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_vec", "role": "dout" }} , 
 	{ "name": "mac_vec_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_vec", "role": "empty_n" }} , 
 	{ "name": "mac_vec_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_vec", "role": "read" }} , 
 	{ "name": "mac_len_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_len", "role": "dout" }} , 
 	{ "name": "mac_len_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_len", "role": "empty_n" }} , 
 	{ "name": "mac_len_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_len", "role": "read" }} , 
 	{ "name": "store_ctrl", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "store_ctrl", "role": "default" }} , 
 	{ "name": "store_ctrl_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "store_ctrl", "role": "ap_vld" }} , 
 	{ "name": "store_ctrl_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "store_ctrl", "role": "ap_ack" }} , 
 	{ "name": "chunk_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "chunk", "role": "dout" }} , 
 	{ "name": "chunk_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "chunk", "role": "empty_n" }} , 
 	{ "name": "chunk_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "chunk", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"Name" : "p_outbuff_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "out_word_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_word_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_n", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_vec", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_vec_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_len", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_len_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "store_ctrl", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "store_ctrl_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "chunk", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "chunk_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_forward_store_ctrl_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	p_outbuff_V { ap_memory {  { p_outbuff_V_address0 mem_address 1 7 }  { p_outbuff_V_ce0 mem_ce 1 1 }  { p_outbuff_V_q0 mem_dout 0 32 } } }
	out_word_V { ap_fifo {  { out_word_V_din fifo_data 1 32 }  { out_word_V_full_n fifo_status 0 1 }  { out_word_V_write fifo_update 1 1 } } }
	mac_n { ap_fifo {  { mac_n_dout fifo_data 0 32 }  { mac_n_empty_n fifo_status 0 1 }  { mac_n_read fifo_update 1 1 } } }
	mac_vec { ap_fifo {  { mac_vec_dout fifo_data 0 32 }  { mac_vec_empty_n fifo_status 0 1 }  { mac_vec_read fifo_update 1 1 } } }
	mac_len { ap_fifo {  { mac_len_dout fifo_data 0 32 }  { mac_len_empty_n fifo_status 0 1 }  { mac_len_read fifo_update 1 1 } } }
	store_ctrl { ap_hs {  { store_ctrl out_data 1 96 }  { store_ctrl_ap_vld out_vld 1 1 }  { store_ctrl_ap_ack out_acc 0 1 } } }
	chunk { ap_fifo {  { chunk_dout fifo_data 0 32 }  { chunk_empty_n fifo_status 0 1 }  { chunk_read fifo_update 1 1 } } }
}
