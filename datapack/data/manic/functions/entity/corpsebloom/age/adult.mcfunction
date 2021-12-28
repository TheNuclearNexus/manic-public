tag @s remove manic.target
scoreboard players set @s manic.age 6
scoreboard players set @s manic.sap 0
particle block dirt ~ ~ ~ 0.5 0.5 0.5 0.1 10 force
playsound minecraft:item.bone_meal.use block @a[distance=0..16] ~ ~ ~
item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360007}
advancement grant @a[distance=..6] only manic:mania/corpsebloom
