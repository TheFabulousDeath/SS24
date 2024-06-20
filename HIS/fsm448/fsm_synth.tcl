read_vhdl FSMtoTSVHDL.vhd

synth_design -top studentenleben -part xc7a100tcsg324-1 -mode out_of_context -fsm_extraction sequential

write_verilog -force ../netlists/viv.synth.adder.v

start_gui

show_schematic [get_nets]

write_schematic -force -format pdf -orientation portrait schematics/adder_synth.pdf

#exit
