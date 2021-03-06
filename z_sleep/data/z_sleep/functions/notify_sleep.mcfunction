execute if score #threshold_type z_sleep matches 0 run tellraw @a ["",{"score":{"name":"z_players_sleeping","objective":"z_sleep"},"color":"gold"}," players (",{"selector":"@a[tag=z_sleep_sleeping]","color":"aqua"},") are now sleeping.\n",{"score":{"name":"#threshold_count","objective":"z_sleep"},"color":"gold"},{"text":" are required to pass the night."}]

execute if score #threshold_type z_sleep matches 1 run tellraw @a ["",{"score":{"name":"#percent_sleeping","objective":"z_sleep"},"color":"gold"},{"text":"%","color":"gold"}," of overworld players (",{"selector":"@a[tag=z_sleep_sleeping]","color":"aqua"},") are now sleeping.\n",{"score":{"name":"#threshold_percent","objective":"z_sleep"},"color":"gold"},{"text":"%","color":"gold"},{"text":" are required to pass the night."}]

scoreboard players enable @a z_sleep_wake
tellraw @a ["Click ",{"text":"[here]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger z_sleep_wake set 1"}}," to wake them from sleep."]
