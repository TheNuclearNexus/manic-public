execute positioned ~10 ~ ~ if entity @a[gamemode=!spectator,gamemode=!creative,distance=..10] run data modify entity @s Motion[0] set value 1.5d
execute positioned ~-10 ~ ~ if entity @a[gamemode=!spectator,gamemode=!creative,distance=..10] run data modify entity @s Motion[0] set value -1.5d
execute positioned ~ ~ ~10 if entity @a[gamemode=!spectator,gamemode=!creative,distance=..10] run data modify entity @s Motion[2] set value 1.5d
execute positioned ~ ~ ~-10 if entity @a[gamemode=!spectator,gamemode=!creative,distance=..10] run data modify entity @s Motion[2] set value -1.5d
particle minecraft:sweep_attack ~ ~ ~ 0.5 0.5 0.5 0.1 3
playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 0.1