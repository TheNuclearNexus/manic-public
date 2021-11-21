execute as @p[tag=pht.interact] run function pht:entity/corpsegourd/shear/player

tag @s remove pht.corpsegourd.root
tag @s add pht.corpsegourd.sheared
item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360024}
execute if entity @s[tag=pht.corpsegourd.sappy] run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360025}