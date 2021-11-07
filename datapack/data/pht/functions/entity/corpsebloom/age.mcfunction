scoreboard players add @s pht.dummy4 1
execute if score @s pht.dummy4 matches 10 run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360010}

execute if score @s pht.dummy4 matches 3 run function pht:entity/corpsebloom/randomise_craving
execute if score @s pht.dummy4 matches 6 run function pht:entity/corpsebloom/randomise_craving
execute if score @s pht.dummy4 matches 9 run function pht:entity/corpsebloom/randomise_craving
execute if score @s pht.dummy4 matches 12 run function pht:entity/corpsebloom/randomise_craving
execute if score @s pht.dummy4 matches 15 run function pht:entity/corpsebloom/randomise_craving
execute if score @s pht.dummy4 matches 18 run function pht:entity/corpsebloom/randomise_craving

execute if score @s pht.dummy4 matches 20.. run function pht:entity/corpsebloom/convert