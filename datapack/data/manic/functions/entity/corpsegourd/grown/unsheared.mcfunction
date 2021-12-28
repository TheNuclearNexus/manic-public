execute unless entity @s[tag=manic.corpsegourd.sappy] as @e[tag=manic.corpsebloom,sort=random,limit=1,distance=..1,scores={manic.sap=1}] at @s run function manic:entity/corpsegourd/grown/absorb_sap

execute if block ~ ~ ~ redstone_wire if predicate manic:chance/coinflip run particle minecraft:dust_color_transition 1 0 0 1 1 1 1 ~ ~0.25 ~ 0.5 0.5 0.5 0 3 force @a