tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nZ_Sleep Settings:"}]

function z_sleep:settings/clamp_threshold
execute if score #threshold_type z_sleep matches 0 run function z_sleep:settings/show_count
execute unless score #threshold_type z_sleep matches 0 run function z_sleep:settings/show_percent
