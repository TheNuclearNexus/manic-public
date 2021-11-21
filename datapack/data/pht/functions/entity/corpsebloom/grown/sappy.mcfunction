scoreboard players reset @s pht.dummy3
scoreboard players set @s pht.dummy4 1
tag @s add pht.corpsebloom.sappy
item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360008}
particle minecraft:falling_honey ~ ~0.75 ~ 0.25 0.25 0.25 0 10
setblock ~ ~ ~ stone_button[face=floor]

scoreboard players add @s pht.max_sap 1
execute unless score @s pht.sap_timer matches 1.. run scoreboard players set @s pht.sap_timer 1200