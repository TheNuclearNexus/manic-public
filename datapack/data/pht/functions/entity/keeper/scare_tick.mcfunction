scoreboard players add @s pht.dummy 1

execute if score @s pht.dummy matches 2 run item replace entity @s armor.head with slime_ball{CustomModelData:8360050}
execute if score @s pht.dummy matches 3 run function pht:entity/keeper/spawn