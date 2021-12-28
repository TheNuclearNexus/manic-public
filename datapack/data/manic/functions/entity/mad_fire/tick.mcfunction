execute if block ~ ~-1 ~ #manic:air run function manic:entity/mad_fire/extinguish
execute unless block ~ ~ ~ #manic:nonsolid run function manic:entity/mad_fire/extinguish

execute unless score @s manic.default matches 1.. as @e[tag=!smithed.block,tag=!manic.schizoid,type=!#manic:technical,distance=..1] run function manic:entity/mad_fire/burn
execute if score @s manic.default matches 1.. run scoreboard players remove @s manic.default 1

scoreboard players add @s manic.dummy 1
execute if score @s manic.dummy matches 120.. if predicate manic:chance/extinguish run function manic:entity/mad_fire/extinguish

execute if predicate manic:chance/third run particle minecraft:large_smoke ~ ~0.5 ~ 0 0 0 0.025 1