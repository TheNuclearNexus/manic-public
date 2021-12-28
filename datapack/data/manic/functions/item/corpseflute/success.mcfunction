scoreboard players remove @s manic.sanity 20
scoreboard players set @s manic.flute_time 3
playsound manic:manic.item.corpseflute player @a

tag @s add manic.used_flute
execute as @e[tag=manic.zombee,sort=furthest,limit=5,distance=..48] run function manic:item/corpseflute/pathfind
execute if entity @e[tag=manic.zombee,distance=..48] run advancement grant @s only manic:mania/corpseflute
tag @s remove manic.used_flute