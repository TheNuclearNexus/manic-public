execute store success score @s manic.entitycount run clone ~-10 ~-5 ~-10 ~10 ~1 ~10 ~-10 ~-5 ~-10 filtered water force
execute unless score @s manic.entitycount matches 1.. run kill @s

tag @s remove manic.is_spook
tag @s remove manic.is_phantom
tag @s remove manic.is_revenant
tag @s remove manic.is_eidolon
tag @s add manic.is_mirage

scoreboard players reset @s manic.entitycount
execute if predicate manic:chance/fourth run scoreboard players add @s manic.entitycount 1
execute if predicate manic:chance/fourth run scoreboard players add @s manic.entitycount 1
execute if predicate manic:chance/fourth run scoreboard players add @s manic.entitycount 1
execute if predicate manic:chance/fourth run scoreboard players add @s manic.entitycount 1

execute if score @s manic.entitycount matches 0 run tp @s ~ ~-10 ~
execute if score @s manic.entitycount matches 1 run tp @s ~-10 ~-2 ~
execute if score @s manic.entitycount matches 2 run tp @s ~10 ~-2 ~
execute if score @s manic.entitycount matches 3 run tp @s ~ ~-2 ~-10
execute if score @s manic.entitycount matches 4 run tp @s ~ ~-2 ~10

execute at @s if predicate manic:chance/coinflip at @s run tp @s ~-2 ~ ~
execute at @s if predicate manic:chance/coinflip at @s run tp @s ~3 ~ ~
execute at @s if predicate manic:chance/coinflip at @s run tp @s ~ ~ ~-2
execute at @s if predicate manic:chance/coinflip at @s run tp @s ~ ~ ~-3
execute at @s if predicate manic:chance/coinflip at @s run tp @s ~ ~-2 ~
execute at @s if predicate manic:chance/coinflip at @s run tp @s ~ ~-4 ~

execute at @s unless block ~ ~ ~ water unless entity @a[tag=manic.gelatin,distance=..48] run kill @s
execute at @s if entity @a[distance=..1] unless entity @a[tag=manic.gelatin,distance=..48] run kill @s