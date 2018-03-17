execute as @e[type=minecraft:tnt,nbt={Fuse:1s}] at @s if block ~ ~ ~ minecraft:tnt run function z_tnt:explode_check
