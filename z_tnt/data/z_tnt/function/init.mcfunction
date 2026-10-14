# Set defaults if not set yet
execute unless data storage z_tnt:settings explosion_shape run data modify storage z_tnt:settings explosion_shape set value "star"
execute unless data storage z_tnt:settings require_confined run data modify storage z_tnt:settings require_confined set value 0
execute unless data storage z_tnt:settings allow_void run data modify storage z_tnt:settings allow_void set value 0

# Allow them to change settings if they want
tellraw @a [ \
    {"text":"Z_TNT Loaded, click "}, \
    {"text":"[here]","color":"blue","click_event":{"action":"run_command","command":"function z_tnt:settings/show"}}, \
    {"text":" to change settings."} \
  ]
