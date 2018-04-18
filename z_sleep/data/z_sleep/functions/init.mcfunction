scoreboard objectives add z_sleep dummy z_sleep settings
scoreboard objectives add z_sleep_wake trigger z_sleep_wake
# Set defaults if not set yet
execute unless score #threshold_type z_sleep matches 0..1 run scoreboard players set #threshold_type z_sleep 0
execute unless score #threshold_count z_sleep matches 1..100 run scoreboard players set #threshold_count z_sleep 1
execute unless score #threshold_percent z_sleep matches 1..100 run scoreboard players set #threshold_percent z_sleep 50

# Allow them to change settings if they want
tellraw @a [{"text":"Z_Sleep Loaded, click "},{"text":"[here]","color":"blue","clickEvent":{"action":"run_command","value":"/function z_sleep:settings/show"}},{"text":" to change settings."}]
