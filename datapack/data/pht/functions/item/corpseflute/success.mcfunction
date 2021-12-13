scoreboard players remove @s pht.sanity 20
scoreboard players set @s pht.flute_time 3
playsound pht:pht.item.corpseflute block @a

tag @s add pht.used_flute
execute as @e[tag=pht.zombee,sort=furthest,limit=5,distance=..48] run function pht:item/corpseflute/pathfind
execute if entity @e[tag=pht.zombee,distance=..48] run advancement grant @s only pht:ingame/corpseflute
tag @s remove pht.used_flute