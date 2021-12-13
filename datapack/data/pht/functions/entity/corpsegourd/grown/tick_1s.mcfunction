data remove entity @s Offers.Recipes
effect give @s invisibility 999999 0 true
effect clear @s poison
effect clear @s hunger

execute unless entity @s[tag=pht.corpsegourd.sheared] run function pht:entity/corpsegourd/grown/unsheared