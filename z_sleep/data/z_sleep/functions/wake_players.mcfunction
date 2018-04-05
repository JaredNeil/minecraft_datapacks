execute at @a[nbt={Sleeping:1b}] run summon minecraft:snowball ~ ~0.6 ~ {Motion:[0.0,-1.0,0.0]}
tellraw @a [{"selector":"@s"},{"text":" has stopped everyone from sleeping."}]
