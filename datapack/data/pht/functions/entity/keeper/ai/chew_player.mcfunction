effect give @p[gamemode=!spectator,gamemode=!creative,distance=..2.5] levitation 1 8 true
effect give @p[gamemode=!spectator,gamemode=!creative,distance=..2.5] instant_damage 1 0 true
execute as @p[gamemode=!spectator,gamemode=!creative,distance=..2.5] unless score @s pht.safe_time matches 1.. run scoreboard players remove @s pht.sanity 100
playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 0.1

execute unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..2.5] run function pht:entity/keeper/ai/charge

execute if entity @e[type=#pht:illagers,distance=..2.5,tag=!global.ignore] run effect give @s instant_health 1 2 true
kill @e[type=#pht:illagers,sort=nearest,limit=1,tag=!global.ignore,distance=..2.5]