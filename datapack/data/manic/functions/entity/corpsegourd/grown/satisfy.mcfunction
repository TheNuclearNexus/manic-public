tag @s add manic.corpsegourd.sappy
playsound manic:entity.corpsegourd.fill block @a
execute if entity @s[tag=manic.corpsegourd.sheared] run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360025}
execute unless entity @s[tag=manic.corpsegourd.sheared] run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360020}