execute if entity @s[tag=manic.corpsethorn.satisfied] run function manic:entity/corpsethorn/trail/create_down

item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360085}

execute if entity @s[tag=manic.corpsethorn.unbloomed] run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 5
execute if entity @s[tag=manic.corpsethorn.unbloomed] run playsound minecraft:item.bone_meal.use block @a

tag @s add manic.corpsethorn.bloomed
tag @s remove manic.corpsethorn.unbloomed
tag @s remove manic.corpsethorn.satisfied