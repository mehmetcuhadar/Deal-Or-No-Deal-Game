
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name deneme -dir "C:/Users/mehme/worDir/deneme/planAhead_run_1" -part xc3s50avq100-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/mehme/worDir/deneme/main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/mehme/worDir/deneme} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "pins.ucf" [current_fileset -constrset]
add_files [list {pins.ucf}] -fileset [get_property constrset [current_run]]
link_design
