tag @p[tag=manic.interact] add manic.found
tag @s remove manic.corpsegourd.sappy
playsound minecraft:item.bottle.fill neutral @a

execute if entity @s[tag=manic.corpsegourd.sheared] run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360024}
execute unless entity @s[tag=manic.corpsegourd.sheared] run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360019}