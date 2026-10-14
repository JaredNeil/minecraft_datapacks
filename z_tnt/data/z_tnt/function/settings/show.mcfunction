# Prepare dialog_args
execute if data storage z_tnt:settings {explosion_shape: "star"} \
  run data modify storage z_tnt:settings dialog_args set value {explosion_shape_star: 1b, explosion_shape_cube: 0b}
execute if data storage z_tnt:settings {explosion_shape: "cube"} \
  run data modify storage z_tnt:settings dialog_args set value {explosion_shape_star: 0b, explosion_shape_cube: 1b}
data modify storage z_tnt:settings dialog_args.require_confined set from storage z_tnt:settings require_confined
data modify storage z_tnt:settings dialog_args.allow_void set from storage z_tnt:settings allow_void

function z_tnt:settings/show_dialog with storage z_tnt:settings dialog_args
