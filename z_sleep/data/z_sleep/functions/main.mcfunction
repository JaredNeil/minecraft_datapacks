# Reset
scoreboard players set z_players_sleeping z_sleep 0
scoreboard players set #players_slept z_sleep 0
scoreboard players set #percent_sleeping z_sleep 0
scoreboard players set #percent_slept z_sleep 0
tag @a remove z_sleep_sleeping

# Count players
execute as @a if data entity @s SleepingY run tag @s add z_sleep_sleeping
execute as @a store result score @s z_sleep run data get entity @s SleepTimer
execute as @a[tag=z_sleep_sleeping] run scoreboard players add z_players_sleeping z_sleep 1
execute as @a[tag=z_sleep_sleeping] run scoreboard players add #percent_sleeping z_sleep 100
execute as @a[tag=z_sleep_sleeping] if score @s z_sleep matches 100.. run scoreboard players add #players_slept z_sleep 1
execute as @a[tag=z_sleep_sleeping] if score @s z_sleep matches 100.. run scoreboard players add #percent_slept z_sleep 100

# Calculate percent sleeping/slept
scoreboard players operation #percent_sleeping z_sleep /= #players_overworld z_sleep
scoreboard players operation #percent_slept z_sleep /= #players_overworld z_sleep

# Send chat message every time someone starts sleeping
execute if entity @a[tag=z_sleep_sleeping,nbt={SleepTimer:0s}] run function z_sleep:notify_sleep

# Wake players if someone clicked the trigger
execute as @a if score @s z_sleep_wake matches 1 run function z_sleep:wake_players

# Skip the night if enough players have slept
execute if score #threshold_type z_sleep matches 0 if score #players_slept z_sleep >= #threshold_count z_sleep run function z_sleep:pass_night
execute if score #threshold_type z_sleep matches 1 if score #percent_slept z_sleep >= #threshold_percent z_sleep run function z_sleep:pass_night
