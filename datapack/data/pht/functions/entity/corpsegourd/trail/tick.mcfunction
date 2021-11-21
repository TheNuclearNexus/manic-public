tp @s ^ ^ ^0.5
scoreboard players add @s pht.dummy 1
execute if score @s pht.dummy matches 28.. run function pht:entity/corpsegourd/trail/delete

execute if score @s pht.dummy matches 5.. if entity @e[tag=pht.corpsegourd.grown,distance=..0.5,tag=!pht.corpsegourd.sappy] run function pht:entity/corpsegourd/trail/complete