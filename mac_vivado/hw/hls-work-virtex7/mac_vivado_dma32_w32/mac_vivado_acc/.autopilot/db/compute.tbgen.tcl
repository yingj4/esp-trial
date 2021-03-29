set moduleName compute
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
set C_modelName {compute}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_inbuff_V int 32 regular {array 6400 { 1 1 } 1 1 }  }
	{ mac_vec int 32 regular {fifo 0}  }
	{ mac_len int 32 regular {fifo 0}  }
	{ p_outbuff_V int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ mac_vec_out int 32 regular {fifo 1}  }
	{ mac_len_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_inbuff_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_vec", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_len", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_outbuff_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_vec_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_len_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_inbuff_V_address0 sc_out sc_lv 13 signal 0 } 
	{ p_inbuff_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_inbuff_V_q0 sc_in sc_lv 32 signal 0 } 
	{ p_inbuff_V_address1 sc_out sc_lv 13 signal 0 } 
	{ p_inbuff_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_inbuff_V_q1 sc_in sc_lv 32 signal 0 } 
	{ mac_vec_dout sc_in sc_lv 32 signal 1 } 
	{ mac_vec_empty_n sc_in sc_logic 1 signal 1 } 
	{ mac_vec_read sc_out sc_logic 1 signal 1 } 
	{ mac_len_dout sc_in sc_lv 32 signal 2 } 
	{ mac_len_empty_n sc_in sc_logic 1 signal 2 } 
	{ mac_len_read sc_out sc_logic 1 signal 2 } 
	{ p_outbuff_V_address0 sc_out sc_lv 7 signal 3 } 
	{ p_outbuff_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ p_outbuff_V_we0 sc_out sc_logic 1 signal 3 } 
	{ p_outbuff_V_d0 sc_out sc_lv 32 signal 3 } 
	{ mac_vec_out_din sc_out sc_lv 32 signal 4 } 
	{ mac_vec_out_full_n sc_in sc_logic 1 signal 4 } 
	{ mac_vec_out_write sc_out sc_logic 1 signal 4 } 
	{ mac_len_out_din sc_out sc_lv 32 signal 5 } 
	{ mac_len_out_full_n sc_in sc_logic 1 signal 5 } 
	{ mac_len_out_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_inbuff_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "p_inbuff_V", "role": "address0" }} , 
 	{ "name": "p_inbuff_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inbuff_V", "role": "ce0" }} , 
 	{ "name": "p_inbuff_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_inbuff_V", "role": "q0" }} , 
 	{ "name": "p_inbuff_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "p_inbuff_V", "role": "address1" }} , 
 	{ "name": "p_inbuff_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_inbuff_V", "role": "ce1" }} , 
 	{ "name": "p_inbuff_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_inbuff_V", "role": "q1" }} , 
 	{ "name": "mac_vec_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_vec", "role": "dout" }} , 
 	{ "name": "mac_vec_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_vec", "role": "empty_n" }} , 
 	{ "name": "mac_vec_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_vec", "role": "read" }} , 
 	{ "name": "mac_len_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_len", "role": "dout" }} , 
 	{ "name": "mac_len_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_len", "role": "empty_n" }} , 
 	{ "name": "mac_len_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_len", "role": "read" }} , 
 	{ "name": "p_outbuff_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_outbuff_V", "role": "address0" }} , 
 	{ "name": "p_outbuff_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outbuff_V", "role": "ce0" }} , 
 	{ "name": "p_outbuff_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_outbuff_V", "role": "we0" }} , 
 	{ "name": "p_outbuff_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_outbuff_V", "role": "d0" }} , 
 	{ "name": "mac_vec_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_vec_out", "role": "din" }} , 
 	{ "name": "mac_vec_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_vec_out", "role": "full_n" }} , 
 	{ "name": "mac_vec_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_vec_out", "role": "write" }} , 
 	{ "name": "mac_len_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_len_out", "role": "din" }} , 
 	{ "name": "mac_len_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_len_out", "role": "full_n" }} , 
 	{ "name": "mac_len_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_len_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "p_inbuff_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "mac_vec", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_vec_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_len", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_len_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_outbuff_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "mac_vec_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_vec_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_len_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_len_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	compute {
		p_inbuff_V {Type I LastRead 4 FirstWrite -1}
		mac_vec {Type I LastRead 0 FirstWrite -1}
		mac_len {Type I LastRead 0 FirstWrite -1}
		p_outbuff_V {Type O LastRead -1 FirstWrite 2}
		mac_vec_out {Type O LastRead -1 FirstWrite 0}
		mac_len_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_inbuff_V { ap_memory {  { p_inbuff_V_address0 mem_address 1 13 }  { p_inbuff_V_ce0 mem_ce 1 1 }  { p_inbuff_V_q0 mem_dout 0 32 }  { p_inbuff_V_address1 MemPortADDR2 1 13 }  { p_inbuff_V_ce1 MemPortCE2 1 1 }  { p_inbuff_V_q1 MemPortDOUT2 0 32 } } }
	mac_vec { ap_fifo {  { mac_vec_dout fifo_data 0 32 }  { mac_vec_empty_n fifo_status 0 1 }  { mac_vec_read fifo_update 1 1 } } }
	mac_len { ap_fifo {  { mac_len_dout fifo_data 0 32 }  { mac_len_empty_n fifo_status 0 1 }  { mac_len_read fifo_update 1 1 } } }
	p_outbuff_V { ap_memory {  { p_outbuff_V_address0 mem_address 1 7 }  { p_outbuff_V_ce0 mem_ce 1 1 }  { p_outbuff_V_we0 mem_we 1 1 }  { p_outbuff_V_d0 mem_din 1 32 } } }
	mac_vec_out { ap_fifo {  { mac_vec_out_din fifo_data 1 32 }  { mac_vec_out_full_n fifo_status 0 1 }  { mac_vec_out_write fifo_update 1 1 } } }
	mac_len_out { ap_fifo {  { mac_len_out_din fifo_data 1 32 }  { mac_len_out_full_n fifo_status 0 1 }  { mac_len_out_write fifo_update 1 1 } } }
}
