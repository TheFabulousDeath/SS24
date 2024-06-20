read_vhdl FSMtoTSVHDL.vhd

synth_design -rtl -rtl_skip_mlo -top studentenleben -mode out_of_context -part xc7a100tcsg324-1 -fsm_extraction sequential

start_gui

show_schematic [get_nets]

write_schematic -force -format pdf -orientation portrait schematics/fsm_rtl.pdf

#exit
