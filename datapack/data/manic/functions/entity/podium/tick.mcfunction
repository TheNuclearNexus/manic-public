execute if block ~ ~-1 ~ #manic:nonsolid run function manic:entity/podium/destroy
execute unless block ~ ~ ~ #manic:air unless block ~ ~ ~ light run function manic:entity/podium/destroy
execute unless block ~ ~1 ~ #manic:air run function manic:entity/podium/destroy

execute if entity @s[nbt={HurtTime:9s}] run function manic:entity/podium/hurt
execute if score @s manic.dummy matches 2.. run function manic:entity/podium/destroy
execute if score @s manic.dummy2 matches 1.. run scoreboard players remove @s manic.dummy2 1
execute unless score @s manic.dummy2 matches 1.. run scoreboard players reset @s manic.dummy