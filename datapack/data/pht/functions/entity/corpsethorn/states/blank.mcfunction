execute if entity @s[tag=pht.corpsethorn.satisfied] run function pht:entity/corpsethorn/trail/create_up
item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360083}
tag @s remove pht.corpsethorn.satisfied