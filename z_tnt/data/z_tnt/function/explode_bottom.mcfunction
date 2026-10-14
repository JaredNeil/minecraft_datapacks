execute if block ~ ~-1 ~ #z_tnt:breakable run setblock ~ ~-1 ~ minecraft:air replace
execute if data storage z_tnt:settings {explosion_shape: "cube"} run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:air replace #z_tnt:breakable
