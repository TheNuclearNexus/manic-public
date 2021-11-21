tag @s remove pht.casting
particle minecraft:enchant ~ ~0.75 ~ 0.5 1 0.5 0.1 10
particle minecraft:scrape ~ ~0.75 ~ 0.5 1 0.5 0.1 5

execute positioned ~1 ~-2 ~ run function pht:entity/necromancer/attack/skeleton/spawn
execute if predicate pht:chance/coinflip run execute positioned ~-1 ~-2 ~ run function pht:entity/necromancer/attack/skeleton/spawn
execute if predicate pht:chance/coinflip run execute positioned ~ ~-2 ~1 run function pht:entity/necromancer/attack/skeleton/spawn
execute if predicate pht:chance/coinflip run execute positioned ~ ~-2 ~-1 run function pht:entity/necromancer/attack/skeleton/spawn