tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nZ_TNT Settings:"}]

execute if score #explosion_shape z_tnt matches 0 run tellraw @s [{"text":"Explosion Shape: [Star]  "},{"text":"Cube","clickEvent":{"action":"run_command","value":"/function z_tnt:settings/set_explosion_cube"}}]
execute unless score #explosion_shape z_tnt matches 0 run tellraw @s [{"text":"Explosion Shape:  "},{"text":"Star","clickEvent":{"action":"run_command","value":"/function z_tnt:settings/set_explosion_star"}},{"text":"  [Cube]"}]

execute if score #require_confined z_tnt matches 0 run tellraw @s [{"text":"Require Confinement: [No]  "},{"text":"Yes","clickEvent":{"action":"run_command","value":"/function z_tnt:settings/set_confined_yes"}}]
execute unless score #require_confined z_tnt matches 0 run tellraw @s [{"text":"Require Confinement:  "},{"text":"No","clickEvent":{"action":"run_command","value":"/function z_tnt:settings/set_confined_no"}},{"text":"  [Yes]"}]

execute if score #open_void z_tnt matches 0 run tellraw @s [{"text":"Allow openings to void: [No]  "},{"text":"Yes","clickEvent":{"action":"run_command","value":"/function z_tnt:settings/set_open_void_yes"}}]
execute unless score #open_void z_tnt matches 0 run tellraw @s [{"text":"Allow openings to void:  "},{"text":"No","clickEvent":{"action":"run_command","value":"/function z_tnt:settings/set_open_void_no"}},{"text":"  [Yes]"}]
