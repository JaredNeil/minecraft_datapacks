$data modify storage z_tnt:settings explosion_shape set value $(explosion_shape)
execute if data storage z_tnt:settings {explosion_shape: "star"} run data modify storage z_tnt:settings dialog_args set value {explosion_shape_star: 1b, explosion_shape_cube: 0b}
execute if data storage z_tnt:settings {explosion_shape: "cube"} run data modify storage z_tnt:settings dialog_args set value {explosion_shape_star: 0b, explosion_shape_cube: 1b}
$data modify storage z_tnt:settings require_confined set value $(require_confined)
$data modify storage z_tnt:settings allow_void set value $(allow_void)
