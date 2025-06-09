###############################################################################
# Created by write_sdc
###############################################################################
current_design ALU_7bit
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 25.0000 
set_clock_uncertainty 0.2500 clk
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {A[0]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {A[1]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {A[2]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {A[3]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {A[4]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {A[5]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {A[6]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {B[0]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {B[1]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {B[2]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {B[3]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {B[4]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {B[5]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {B[6]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {OP}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {ZF}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[0]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[1]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[2]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[3]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[4]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[5]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {result[6]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {ZF}]
set_load -pin_load 0.0334 [get_ports {result[6]}]
set_load -pin_load 0.0334 [get_ports {result[5]}]
set_load -pin_load 0.0334 [get_ports {result[4]}]
set_load -pin_load 0.0334 [get_ports {result[3]}]
set_load -pin_load 0.0334 [get_ports {result[2]}]
set_load -pin_load 0.0334 [get_ports {result[1]}]
set_load -pin_load 0.0334 [get_ports {result[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {OP}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[0]}]
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_capacitance 0.2000 [current_design]
set_max_fanout 10.0000 [current_design]
