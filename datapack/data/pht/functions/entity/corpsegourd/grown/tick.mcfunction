data remove entity @s Offers.Recipes
effect give @s invisibility 999999 0 true
effect clear @s poison

execute unless block ~ ~-1 ~ #pht:corpsebloom_valid_blocks run function pht:entity/corpsegourd/destroy
execute unless block ~ ~ ~ #pht:air unless block ~ ~ ~ redstone_wire run function pht:entity/corpsegourd/destroy
execute unless block ~ ~1 ~ #pht:air run function pht:entity/corpsegourd/destroy

execute if entity @s[nbt={HurtTime:9s}] run function pht:entity/corpsegourd/hurt
execute if score @s pht.dummy matches 2.. run function pht:entity/corpsegourd/destroy
execute if score @s pht.dummy2 matches 1.. run scoreboard players remove @s pht.dummy2 1
execute unless score @s pht.dummy2 matches 1.. run scoreboard players reset @s pht.dummy

execute unless entity @s[tag=pht.sheared] run function pht:entity/corpsegourd/grown/unsheared_tick