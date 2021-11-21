effect give @p[distance=..2.5] levitation 1 8 true
effect give @p[distance=..2.5] instant_damage 1 0 true
scoreboard players remove @p[distance=..2.5] pht.sanity 100
playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 0.1

execute unless entity @a[distance=..2.5] run function pht:entity/keeper/ai/charge