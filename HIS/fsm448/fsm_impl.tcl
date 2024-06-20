read_vhdl FSMtoTSVHDL.vhd

synth_design -top studentenleben -part xc7a100tcsg324-1 -fsm_extraction sequential
opt_design
place_design
route_design

write_verilog -force netlists/viv.impl.fsm.v
report_timing -file reports/viv.fsm.rpt

start_gui

show_schematic [get_nets]

write_schematic -force -format pdf -orientation portrait schematics/adder_impl.pdf

#exit
