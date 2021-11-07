data remove entity @s Offers.Recipes
effect give @s invisibility 999999 0 true
effect clear @s poison

execute if predicate pht:chance/corpsebloom_ambient run function pht:entity/corpsebloom/ambience