execute align y run tp @s ~ ~ ~
tag @s add manic.snared
tag @s add manic.entity
execute align y run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["manic.entity","manic.snare"],ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360011}}]}
data merge entity @s {NoAI:1b}
data remove entity @s Motion
attribute @s minecraft:generic.knockback_resistance base set 713

particle crit ~ ~0.75 ~ 0.25 0.5 0.25 0.1 15
playsound manic:entity.snare.ambient hostile @a ~ ~ ~ 1 1