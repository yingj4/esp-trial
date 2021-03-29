create_clock -name clock [get_ports "CLK" ]  -period 12.5
set_max_delay -datapath_only -from [all_inputs] -to [all_clocks] 12.5
set_max_delay -datapath_only -to [all_outputs] -from [all_clocks] 12.5
