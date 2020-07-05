scoreboard players set #players_overworld z_sleep 0
execute as @a[nbt={Dimension:"minecraft:overworld"}] run scoreboard players add #players_overworld z_sleep 1
execute if score #players_overworld z_sleep matches 1.. run function z_sleep:main
