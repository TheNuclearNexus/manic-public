particle block dirt ~ ~ ~ 0.5 0.5 0.5 0.1 10 force
tag @s remove pht.corpsebloom
tag @s add pht.corpsebloom.grown
item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360007}
scoreboard players reset @s pht.dummy3
scoreboard players reset @s pht.dummy4
advancement grant @a[distance=..12] only pht:ingame/corpsebloom