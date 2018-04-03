scoreboard objectives add z_tnt dummy z_tnt settings
# Set defaults if not set yet
execute unless score #explosion_shape z_tnt matches 0..1 run scoreboard players set #explosion_shape z_tnt 0
execute unless score #require_confined z_tnt matches 0..1 run scoreboard players set #require_confined z_tnt 0
execute unless score #open_void z_tnt matches 0..1 run scoreboard players set #open_void z_tnt 0

# Allow them to change settings if they want
tellraw @a [{"text":"Z_TNT Loaded, click "},{"text":"[here]","color":"blue","clickEvent":{"action":"suggest_command","value":"/function z_tnt:settings/show"}},{"text":" to change settings."}]
