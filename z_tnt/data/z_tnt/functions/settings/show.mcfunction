tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nZ_TNT Settings:"}]

execute if score #explosion_shape z_tnt matches 0 run tellraw @s [  "Explosion Shape: ",  {    "text":"[Star]",    "color":"light_purple"  },  " ",  {    "text":"[Cube]",    "color":"blue",    "clickEvent":{      "action":"run_command",      "value":"/function z_tnt:settings/set_explosion_cube"    }  }]
execute if score #explosion_shape z_tnt matches 1 run tellraw @s [  "Explosion Shape: ",  {    "text":"[Star]",    "color":"blue",    "clickEvent":{      "action":"run_command",      "value":"/function z_tnt:settings/set_explosion_star"    }  },  " ",  {    "text":"[Cube]",    "color":"light_purple"  }]

execute if score #require_confined z_tnt matches 0 run tellraw @s ["Require Confinement: ",{"text":"[No]","color":"light_purple"}," ",{"text":"[Yes]","color":"blue","clickEvent":{"action":"run_command","value":"/function z_tnt:settings/set_confined_yes"}}]
execute if score #require_confined z_tnt matches 1 run tellraw @s [{"text":"Require Confinement: "},{"text":"[No]","color":"blue","clickEvent":{"action":"run_command","value":"/function z_tnt:settings/set_confined_no"}}," ",{"text":"[Yes]","color":"light_purple"}]

execute if score #open_void z_tnt matches 0 run tellraw @s ["Allow openings to void: ",{"text":"[No]","color":"light_purple"}," ",{"text":"[Yes]","color":"blue","clickEvent":{"action":"run_command","value":"/function z_tnt:settings/set_open_void_yes"}}]
execute if score #open_void z_tnt matches 1 run tellraw @s ["Allow openings to void: ",{"text":"[No]","color":"blue","clickEvent":{"action":"run_command","value":"/function z_tnt:settings/set_open_void_no"}}," ",{"text":"[Yes]","color":"light_purple"}]
