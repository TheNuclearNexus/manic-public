scoreboard players add #manic.blindness manic.dummy3 1
execute if score #manic.blindness manic.dummy3 matches 2.. run scoreboard players reset #manic.blindness manic.dummy3

execute if score #manic.blindness manic.dummy3 matches 1 run tellraw @s {"translate":"manic.blindness_off","color":"#7524dd"}
execute unless score #manic.blindness manic.dummy3 matches 1 run tellraw @s {"translate":"manic.blindness_on","color":"#7524dd"}