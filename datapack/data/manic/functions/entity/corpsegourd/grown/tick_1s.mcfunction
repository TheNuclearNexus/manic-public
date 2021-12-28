data remove entity @s Offers.Recipes
effect give @s invisibility 999999 0 true
effect clear @s poison
effect clear @s hunger

execute unless entity @s[tag=manic.corpsegourd.sheared] run function manic:entity/corpsegourd/grown/unsheared
execute as @s[tag=manic.corpsegourd.whistled,tag=manic.corpsegourd.sappy] run function manic:entity/corpsegourd/trail/create