execute if score @s manic.sap matches 1.. run function manic:entity/corpsebloom/grown/sappy
execute unless score @s manic.sap matches 1.. if entity @e[tag=manic.snared,distance=..10,sort=random,limit=1,scores={manic.default=5..}] if predicate manic:chance/coinflip run function manic:entity/corpsebloom/grown/fill
execute as @e[tag=manic.snared,distance=..10] at @s run function manic:entity/corpsebloom/grown/snare/tick_1s
execute as @e[limit=1,distance=..10,sort=random,tag=!manic.snared,tag=!global.ignore,type=#manic:snareable] at @s if block ~ ~-1 ~ #manic:corpsebloom_valid_blocks run function manic:entity/corpsebloom/grown/snare/snare
