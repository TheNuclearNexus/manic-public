execute as @p[gamemode=!spectator,gamemode=!creative,distance=..2.5] run function pht:entity/keeper/ai/damage
playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 0.1

execute unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..2.5] run function pht:entity/keeper/ai/charge

execute if entity @e[type=#pht:illagers,distance=..2.5,tag=!smithed.entity] run effect give @s instant_health 1 1 true
kill @e[type=#pht:illagers,sort=nearest,limit=1,tag=!smithed.entity,distance=..2.5]