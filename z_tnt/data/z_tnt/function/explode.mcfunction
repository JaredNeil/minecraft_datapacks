setblock ~ ~ ~ minecraft:air replace
execute if block ~-1 ~ ~ #z_tnt:breakable run setblock ~-1 ~ ~ minecraft:air replace
execute if block ~ ~ ~-1 #z_tnt:breakable run setblock ~ ~ ~-1 minecraft:air replace
execute if block ~1 ~ ~ #z_tnt:breakable run setblock ~1 ~ ~ minecraft:air replace
execute if block ~ ~1 ~ #z_tnt:breakable run setblock ~ ~1 ~ minecraft:air replace
execute if block ~ ~ ~1 #z_tnt:breakable run setblock ~ ~ ~1 minecraft:air replace
execute if data storage z_tnt:settings {explosion_shape: "cube"} run fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air replace #z_tnt:breakable
execute if data storage z_tnt:settings {allow_void: 0} if dimension minecraft:overworld unless entity @s[y=-63,dy=0] run function z_tnt:explode_bottom
execute if data storage z_tnt:settings {allow_void: 0} unless dimension minecraft:overworld unless entity @s[y=1,dy=0] run function z_tnt:explode_bottom
execute if data storage z_tnt:settings {allow_void: 1} run function z_tnt:explode_bottom
