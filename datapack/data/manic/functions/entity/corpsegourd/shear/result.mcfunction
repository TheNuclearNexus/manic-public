execute as @p[tag=manic.interact] run function manic:entity/corpsegourd/shear/player

tag @s remove manic.corpsegourd.root
tag @s add manic.corpsegourd.sheared
item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360024}
execute if entity @s[tag=manic.corpsegourd.sappy] run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360025}