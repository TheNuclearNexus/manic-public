execute unless block ~ ~-1 ~ #manic:corpsebloom_valid_blocks run function manic:entity/corpsethorn/destroy
execute unless block ~ ~ ~ #manic:air unless block ~ ~ ~ light run function manic:entity/corpsethorn/destroy
execute unless block ~ ~1 ~ #manic:air run function manic:entity/corpsethorn/destroy

execute if entity @s[nbt={HurtTime:9s}] run function manic:entity/corpsethorn/hurt
execute if score @s manic.dummy matches 2.. run function manic:entity/corpsethorn/destroy
execute if score @s manic.dummy2 matches 1.. run scoreboard players remove @s manic.dummy2 1
execute unless score @s manic.dummy2 matches 1.. run scoreboard players reset @s manic.dummy

execute unless score @s manic.default matches 1.. as @e[tag=!smithed.block,tag=!manic.corpsethorn_immune,type=!#manic:technical,distance=0..1] run function manic:entity/corpsethorn/stab
execute if score @s manic.default matches 1.. run scoreboard players remove @s manic.default 1