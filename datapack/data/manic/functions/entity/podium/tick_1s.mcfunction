data remove entity @s Offers.Recipes
effect give @s invisibility 999999 0 true
effect clear @s poison

execute as @s[tag=manic.podium.full] if predicate manic:chance/third run particle minecraft:end_rod ~ ~1.5 ~ 0.25 0.25 0.25 0 1 force