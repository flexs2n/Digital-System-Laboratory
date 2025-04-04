# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.cache/wt} [current_project]
set_property parent.project_path {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/Grid_decoder.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/imports/new/Seg7Display.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/imports/new/Multiplexer_4way.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/MouseTransmitter.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/MouseReceiver.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/MouseMasterSM.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/imports/new/Generic_counter.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/Ten_CounterHz.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/IR_Transmitter.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/VGA_Sig_Gen.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/Frame_Buffer.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/SegAndLED.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/MouseTransceiver.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/imports/Downloads/ALU.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/IR_Transmitter_Driver.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/VGA_Controller.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/Timer.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/seg7Driver.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/imports/Downloads/RAM.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/imports/Downloads/Processor.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/MouseDriver.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/LEDDriver.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/imports/Downloads/ROM.v}
  {C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/sources_1/new/TopLevel.v}
}
read_xdc {{C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/constrs_1/new/Mouse_Constraints.xdc}}
set_property used_in_implementation false [get_files {{C:/Digital System design 3/Mouse Driver/Mouse Driver/Mouse Driver.srcs/constrs_1/new/Mouse_Constraints.xdc}}]

synth_design -top TopLevel -part xc7a35tcpg236-1
write_checkpoint -noxdef TopLevel.dcp
catch { report_utilization -file TopLevel_utilization_synth.rpt -pb TopLevel_utilization_synth.pb }
