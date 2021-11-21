tag @p[tag=pht.interact] add pht.found
tag @s remove pht.corpsegourd.sappy
playsound minecraft:item.bottle.fill neutral @a

execute if entity @s[tag=pht.corpsegourd.sheared] run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360024}
execute unless entity @s[tag=pht.corpsegourd.sheared] run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360019}