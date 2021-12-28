scoreboard players add #manic.display manic.dummy3 1
execute if score #manic.display manic.dummy3 matches 2 run scoreboard players reset #manic.display manic.dummy3

execute if score #manic.display manic.dummy3 matches 1 run tellraw @s {"translate":"manic.global_trigger_off","color":"#7524dd"}
execute unless score #manic.display manic.dummy3 matches 1 run tellraw @s {"translate":"manic.global_trigger_on","color":"#7524dd"}