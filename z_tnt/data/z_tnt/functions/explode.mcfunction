setblock ~ ~ ~ minecraft:air replace
execute if block ~-1 ~ ~ #z_tnt:breakable run setblock ~-1 ~ ~ minecraft:air replace
execute if block ~ ~ ~-1 #z_tnt:breakable run setblock ~ ~ ~-1 minecraft:air replace
execute if block ~1 ~ ~ #z_tnt:breakable run setblock ~1 ~ ~ minecraft:air replace
execute if block ~ ~1 ~ #z_tnt:breakable run setblock ~ ~1 ~ minecraft:air replace
execute if block ~ ~ ~1 #z_tnt:breakable run setblock ~ ~ ~1 minecraft:air replace
execute if score #explosion_shape z_tnt matches 1 run fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air replace #z_tnt:breakable
execute if score #open_void z_tnt matches 0 unless entity @s[y=1,dy=0] run function z_tnt:explode_bottom
execute if score #open_void z_tnt matches 1 run function z_tnt:explode_bottom
