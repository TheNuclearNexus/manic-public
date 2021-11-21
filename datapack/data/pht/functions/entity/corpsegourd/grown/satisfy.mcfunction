tag @s add pht.corpsegourd.sappy

execute if entity @s[tag=pht.corpsegourd.sheared] run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360025}
execute unless entity @s[tag=pht.corpsegourd.sheared] run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360020}