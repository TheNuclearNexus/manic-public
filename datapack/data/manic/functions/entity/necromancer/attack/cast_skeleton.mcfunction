tag @s remove manic.casting
particle minecraft:enchant ~ ~0.75 ~ 0.5 1 0.5 0.1 10
particle minecraft:scrape ~ ~0.75 ~ 0.5 1 0.5 0.1 5

execute positioned ~1 ~-2 ~ run function manic:entity/necromancer/attack/skeleton/spawn
execute if predicate manic:chance/coinflip run execute positioned ~-1 ~-2 ~ run function manic:entity/necromancer/attack/skeleton/spawn
execute if predicate manic:chance/coinflip run execute positioned ~ ~-2 ~1 run function manic:entity/necromancer/attack/skeleton/spawn
execute if predicate manic:chance/coinflip run execute positioned ~ ~-2 ~-1 run function manic:entity/necromancer/attack/skeleton/spawn

scoreboard players remove @s manic.sanity 50