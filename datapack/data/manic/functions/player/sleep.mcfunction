scoreboard players reset @s manic.last_sleep

execute unless score #manic.global_sleep manic.dummy3 matches 1 run function manic:player/sleep/regen
execute if score #manic.global_sleep manic.dummy3 matches 1 run scoreboard players set #manic.global_sleep manic.dummy 1