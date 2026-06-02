###############################################################################
# Created by write_sdc
# Sun May  3 12:55:03 2026
###############################################################################
current_design calculator
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {A[0]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {A[1]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {A[2]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {A[3]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {A[4]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {A[5]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {A[6]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {A[7]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {B[0]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {B[1]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {B[2]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {B[3]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {B[4]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {B[5]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {B[6]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {B[7]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {operand[0]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {operand[1]}]
set_input_delay 0.0000 -clock [get_clocks {clk}] -add_delay [get_ports {operand[2]}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
