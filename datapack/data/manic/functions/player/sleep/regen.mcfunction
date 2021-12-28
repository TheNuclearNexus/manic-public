scoreboard players reset @s manic.last_sleep

execute at @s if predicate manic:location/overworld if score #manic.difficulty manic.dummy matches 1 run scoreboard players add @s manic.sanity 888
execute at @s if predicate manic:location/overworld if score #manic.difficulty manic.dummy matches 2 run scoreboard players add @s manic.sanity 666
execute at @s if predicate manic:location/overworld if score #manic.difficulty manic.dummy matches 3 run scoreboard players add @s manic.sanity 444