create_clock -name {clk} [get_ports {clk}]  -period 12.5
set_max_delay -datapath_only -from [all_inputs] -to [all_clocks] 11.74
set_max_delay -datapath_only -to [all_outputs] -from [all_clocks] 11.963
