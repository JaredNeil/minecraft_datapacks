execute if block ~ ~-1 ~ #z_tnt:breakable run setblock ~ ~-1 ~ minecraft:air replace
execute if score #explosion_shape z_tnt matches 1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:air replace #z_tnt:breakable
