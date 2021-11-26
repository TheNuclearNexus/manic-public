playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 0.1
effect give @e[type=#pht:illagers,sort=nearest,limit=1,tag=!global.ignore,distance=..2.5] slowness 4 255 true
scoreboard players set @s pht.keeper2 4
effect give @s slowness 2 5 true