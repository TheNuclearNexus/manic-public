kill @s[type=marker]
playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 3 0.85
playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 3 0.5
playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 3 0.1
particle block dark_oak_planks ~ ~ ~ 0.5 0.1 0.5 0 50 force
effect give @a[distance=..16] blindness 1 0 true

execute align y run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["pht.entity","pht.keeper_scare","global.ignore"],ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360049}}]}
execute as @e[tag=pht.keeper_scare] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=pht.keeper_scare] at @s if block ~ ~-1 ~ #pht:raycast_ignore run tp @s ~ ~-1 ~