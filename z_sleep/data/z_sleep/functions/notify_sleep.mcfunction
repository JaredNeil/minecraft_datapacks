execute if score #threshold_type z_sleep matches 0 run tellraw @a ["",{"score":{"name":"#players_sleeping","objective":"z_sleep"},"color":"gold"}," players (",{"selector":"@a[nbt={Sleeping:1b}]","color":"aqua"},") are now sleeping.\n",{"score":{"name":"#threshold_count","objective":"z_sleep"},"color":"gold"},{"text":" are required to pass the night."}]

execute if score #threshold_type z_sleep matches 1 run tellraw @a ["",{"score":{"name":"#percent_sleeping","objective":"z_sleep"},"color":"gold"},{"text":"%","color":"gold"}," of overworld players (",{"selector":"@a[nbt={Sleeping:1b}]","color":"aqua"},") are now sleeping.\n",{"score":{"name":"#threshold_percent","objective":"z_sleep"},"color":"gold"},{"text":"%","color":"gold"},{"text":" are required to pass the night."}]

tellraw @a ["Click ",{"text":"[here]","color":"blue","clickEvent":{"action":"run_command","value":"/function z_sleep:wake_players"}}," to wake them from sleep."]
