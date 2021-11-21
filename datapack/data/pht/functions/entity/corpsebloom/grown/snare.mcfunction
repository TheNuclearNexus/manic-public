execute align y run tp @s ~ ~ ~
tag @s add pht.snared
tag @s add pht.entity
execute align y run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["pht.entity","pht.snare"],ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360011}}]}
data merge entity @s {NoAI:1b}

particle crit ~ ~0.75 ~ 0.25 0.5 0.25 0.1 15
playsound minecraft:entity.wither.shoot block @a ~ ~ ~ 0.3 1.5