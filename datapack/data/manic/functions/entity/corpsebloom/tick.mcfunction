execute as @e[type=item,distance=..1,predicate=manic:corpsebloom/food] unless data entity @s Thrower as @e[type=wandering_trader,distance=..1,tag=manic.corpsebloom,limit=1] if predicate manic:chance/random_feed run function manic:entity/corpsebloom/age/advance
execute as @e[type=item,distance=..1,predicate=manic:corpsebloom/food] unless data entity @s Thrower run kill @s

execute unless block ~ ~-1 ~ #manic:corpsebloom_valid_blocks run function manic:entity/corpsebloom/destroy
execute unless block ~ ~ ~ #manic:air run function manic:entity/corpsebloom/destroy
execute unless block ~ ~1 ~ #manic:air run function manic:entity/corpsebloom/destroy

execute if entity @s[nbt={HurtTime:9s}] run function manic:entity/corpsebloom/hurt
execute if score @s manic.default3 matches 2.. run function manic:entity/corpsebloom/destroy
execute if score @s manic.default4 matches 1.. run scoreboard players remove @s manic.dummy2 1
execute unless score @s manic.default4 matches 1.. run scoreboard players reset @s manic.default3