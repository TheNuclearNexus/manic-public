scoreboard players set @s manic.sap 0
item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360007}
execute at @s as @e[tag=manic.corpsegourd.grown,tag=!manic.corpsegourd.sappy,sort=random,limit=1,distance=..1] run function manic:entity/corpsegourd/grown/satisfy