data remove entity @s Offers.Recipes
effect give @s invisibility 999999 0 true
effect clear @s poison
effect clear @s hunger

execute as @e[limit=1,distance=..10,sort=random,tag=!smithed.entity,tag=!global.ignore,tag=!pht.snared,type=#pht:undead] at @s if block ~ ~-1 ~ #pht:corpsebloom_valid_blocks run function pht:entity/corpsebloom/grown/snare
execute as @e[limit=1,distance=..10,sort=random,tag=!pht.snared,tag=pht.snareable] at @s if block ~ ~-1 ~ #pht:corpsebloom_valid_blocks run function pht:entity/corpsebloom/grown/snare

execute if score @s pht.dummy3 matches 5.. unless score @s pht.max_sap matches 4.. run function pht:entity/corpsebloom/grown/sappy
execute if score @s pht.sap_timer matches 1.. run scoreboard players remove @s pht.sap_timer 1
execute unless score @s pht.sap_timer matches 1.. run function pht:entity/corpsebloom/grown/reset_sap
execute if score @s pht.dummy3 matches 5.. if score @s pht.max_sap matches 1.. run scoreboard players set @s pht.dummy3 4

execute if entity @s[tag=pht.corpsebloom.sappy] if predicate pht:chance/coinflip run particle minecraft:falling_honey ~ ~0.75 ~ 0.25 0.25 0.25 0 2

execute as @e[limit=1,distance=..10,sort=random,tag=!smithed.entity,tag=!pht.snared,type=bee] at @s if block ~ ~-1 ~ #pht:corpsebloom_valid_blocks run function pht:entity/corpsebloom/grown/snare
execute as @e[limit=1,distance=..10,sort=random,tag=!smithed.entity,tag=!pht.snared,type=creeper] at @s if block ~ ~-1 ~ #pht:corpsebloom_valid_blocks run function pht:entity/corpsebloom/grown/snare