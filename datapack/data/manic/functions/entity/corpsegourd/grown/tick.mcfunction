data remove entity @s Offers.Recipes
effect give @s invisibility 999999 0 true
effect clear @s poison

execute unless block ~ ~-1 ~ #manic:corpsebloom_valid_blocks run function manic:entity/corpsegourd/destroy
execute unless block ~ ~ ~ #manic:air unless block ~ ~ ~ redstone_wire run function manic:entity/corpsegourd/destroy
execute unless block ~ ~1 ~ #manic:air run function manic:entity/corpsegourd/destroy

execute if entity @s[nbt={HurtTime:9s}] run function manic:entity/corpsegourd/hurt
execute if score @s manic.dummy matches 2.. run function manic:entity/corpsegourd/destroy
execute if score @s manic.dummy2 matches 1.. run scoreboard players remove @s manic.dummy2 1
execute unless score @s manic.dummy2 matches 1.. run scoreboard players reset @s manic.dummy

execute unless entity @s[tag=manic.sheared] run function manic:entity/corpsegourd/grown/unsheared_tick