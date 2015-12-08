set projDir "E:/MojoIDE/mojo/Game v1/work/planAhead"
set projName "Game v1"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "E:/MojoIDE/mojo/Game v1/work/verilog/mojo_top_0.v" "E:/MojoIDE/mojo/Game v1/work/verilog/reset_conditioner_1.v" "E:/MojoIDE/mojo/Game v1/work/verilog/edge_detector_2.v" "E:/MojoIDE/mojo/Game v1/work/verilog/button_conditioner_3.v" "E:/MojoIDE/mojo/Game v1/work/verilog/edge_detector_2.v" "E:/MojoIDE/mojo/Game v1/work/verilog/button_conditioner_3.v" "E:/MojoIDE/mojo/Game v1/work/verilog/edge_detector_2.v" "E:/MojoIDE/mojo/Game v1/work/verilog/button_conditioner_3.v" "E:/MojoIDE/mojo/Game v1/work/verilog/edge_detector_2.v" "E:/MojoIDE/mojo/Game v1/work/verilog/button_conditioner_3.v" "E:/MojoIDE/mojo/Game v1/work/verilog/edge_detector_2.v" "E:/MojoIDE/mojo/Game v1/work/verilog/button_conditioner_3.v" "E:/MojoIDE/mojo/Game v1/work/verilog/edge_detector_2.v" "E:/MojoIDE/mojo/Game v1/work/verilog/button_conditioner_3.v" "E:/MojoIDE/mojo/Game v1/work/verilog/edge_detector_2.v" "E:/MojoIDE/mojo/Game v1/work/verilog/button_conditioner_3.v" "E:/MojoIDE/mojo/Game v1/work/verilog/edge_detector_2.v" "E:/MojoIDE/mojo/Game v1/work/verilog/button_conditioner_3.v" "E:/MojoIDE/mojo/Game v1/work/verilog/edge_detector_2.v" "E:/MojoIDE/mojo/Game v1/work/verilog/button_conditioner_3.v" "E:/MojoIDE/mojo/Game v1/work/verilog/edge_detector_2.v" "E:/MojoIDE/mojo/Game v1/work/verilog/button_conditioner_3.v" "E:/MojoIDE/mojo/Game v1/work/verilog/edge_detector_2.v" "E:/MojoIDE/mojo/Game v1/work/verilog/button_conditioner_3.v" "E:/MojoIDE/mojo/Game v1/work/verilog/counter_24.v" "E:/MojoIDE/mojo/Game v1/work/verilog/ROM_25.v" "E:/MojoIDE/mojo/Game v1/work/verilog/alu_26.v" "E:/MojoIDE/mojo/Game v1/work/verilog/decimal_27.v" "E:/MojoIDE/mojo/Game v1/work/verilog/decimal_27.v" "E:/MojoIDE/mojo/Game v1/work/verilog/seven_seg_29.v" "E:/MojoIDE/mojo/Game v1/work/verilog/seven_seg_29.v" "E:/MojoIDE/mojo/Game v1/work/verilog/seven_seg_29.v" "E:/MojoIDE/mojo/Game v1/work/verilog/seven_seg_29.v" "E:/MojoIDE/mojo/Game v1/work/verilog/seven_seg_29.v" "E:/MojoIDE/mojo/Game v1/work/verilog/seven_seg_29.v" "E:/MojoIDE/mojo/Game v1/work/verilog/seven_seg_29.v" "E:/MojoIDE/mojo/Game v1/work/verilog/seven_seg_29.v" "E:/MojoIDE/mojo/Game v1/work/verilog/seven_seg_29.v" "E:/MojoIDE/mojo/Game v1/work/verilog/seven_seg_29.v" "E:/MojoIDE/mojo/Game v1/work/verilog/seven_seg_29.v" "E:/MojoIDE/mojo/Game v1/work/verilog/seven_seg_29.v" "E:/MojoIDE/mojo/Game v1/work/verilog/seven_seg_29.v" "E:/MojoIDE/mojo/Game v1/work/verilog/seven_seg_29.v" "E:/MojoIDE/mojo/Game v1/work/verilog/pipeline_43.v" "E:/MojoIDE/mojo/Game v1/work/verilog/pipeline_43.v" "E:/MojoIDE/mojo/Game v1/work/verilog/pipeline_43.v" "E:/MojoIDE/mojo/Game v1/work/verilog/pipeline_43.v" "E:/MojoIDE/mojo/Game v1/work/verilog/pipeline_43.v" "E:/MojoIDE/mojo/Game v1/work/verilog/pipeline_43.v" "E:/MojoIDE/mojo/Game v1/work/verilog/pipeline_43.v" "E:/MojoIDE/mojo/Game v1/work/verilog/pipeline_43.v" "E:/MojoIDE/mojo/Game v1/work/verilog/pipeline_43.v" "E:/MojoIDE/mojo/Game v1/work/verilog/pipeline_43.v" "E:/MojoIDE/mojo/Game v1/work/verilog/pipeline_43.v" "E:/MojoIDE/mojo/Game v1/work/verilog/adder_54.v" "E:/MojoIDE/mojo/Game v1/work/verilog/compare_55.v" "E:/MojoIDE/mojo/Game v1/work/verilog/boolean_56.v" "E:/MojoIDE/mojo/Game v1/work/verilog/shifter_57.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "E:/MojoIDE/mojo/Game\ v1/constraint/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
