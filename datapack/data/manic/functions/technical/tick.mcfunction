execute as @e[type=#manic:affected,tag=manic.entity] at @s run function manic:entity/tick
execute as @a at @s run function manic:player/tick

## RNJank
# help
scoreboard players add #manic.rng manic.dummy3 1
execute if predicate manic:chance/coinflip run scoreboard players add #manic.rng manic.dummy3 1
execute if predicate manic:chance/coinflip run scoreboard players add #manic.rng manic.dummy3 1
execute if predicate manic:chance/coinflip run scoreboard players add #manic.rng manic.dummy3 1
execute if predicate manic:chance/coinflip run scoreboard players add #manic.rng manic.dummy3 1
execute if predicate manic:chance/coinflip run scoreboard players add #manic.rng manic.dummy3 1
execute if score #manic.rng manic.dummy3 matches 7.. run scoreboard players set #manic.rng manic.dummy3 1