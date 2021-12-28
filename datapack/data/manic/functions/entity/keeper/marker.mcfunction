scoreboard players add @s manic.dummy 1
execute if score @s manic.dummy matches 2.. unless entity @a[distance=..4] run function manic:entity/keeper/scare