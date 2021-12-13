execute if entity @s[tag=pht.corpsethorn.satisfied] run function pht:entity/corpsethorn/trail/create_down

item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360085}

execute if entity @s[tag=pht.corpsethorn.unbloomed] run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 5
execute if entity @s[tag=pht.corpsethorn.unbloomed] run playsound minecraft:item.bone_meal.use block @a

tag @s add pht.corpsethorn.bloomed
tag @s remove pht.corpsethorn.unbloomed
tag @s remove pht.corpsethorn.satisfied