particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.5 0.5 0.1 3
playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 0.1

execute facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned 0.0 0 0.0 run summon marker ^ ^ ^2 {Tags:["pht.direction"]}
data modify entity @s Motion set from entity @e[type=marker,tag=pht.direction,limit=1] Pos
kill @e[tag=pht.direction]