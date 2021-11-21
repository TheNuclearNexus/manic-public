tag @s remove pht.corpsebloom.sappy
item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360007}
playsound minecraft:block.bell.use block @a ~ ~ ~ 1 2
execute at @s as @e[tag=pht.corpsegourd.grown,tag=!pht.corpsegourd.sappy,sort=random,limit=1,distance=..1] run function pht:entity/corpsegourd/grown/satisfy