scoreboard players add #manic.global_sleep manic.dummy3 1
execute if score #manic.global_sleep manic.dummy3 matches 2.. run scoreboard players reset #manic.global_sleep manic.dummy3

execute if score #manic.global_sleep manic.dummy3 matches 1 run tellraw @s {"translate":"manic.global_sleep_on","color":"#7524dd"}
execute unless score #manic.global_sleep manic.dummy3 matches 1 run tellraw @s {"translate":"manic.global_sleep_off","color":"#7524dd"}

execute if score #manic.global_sleep manic.dummy3 matches 1 run gamerule playersSleepingPercentage 1
execute unless score #manic.global_sleep manic.dummy3 matches 1 run gamerule playersSleepingPercentage 100