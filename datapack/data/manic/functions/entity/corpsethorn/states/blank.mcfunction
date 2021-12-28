execute if entity @s[tag=manic.corpsethorn.satisfied] run function manic:entity/corpsethorn/trail/create_up
item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360083}
tag @s remove manic.corpsethorn.satisfied