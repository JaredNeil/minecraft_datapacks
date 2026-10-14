execute as @e[type=minecraft:tnt,nbt={fuse:1s}] \
  at @s \
  if block ~ ~ ~ minecraft:tnt \
  run function z_tnt:explode_check
