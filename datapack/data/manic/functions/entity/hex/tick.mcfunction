## Hurt Detection
tag @s remove manic.hurt
execute store result score @s manic.dummy run data get entity @s HurtTime
execute if score @s manic.dummy matches 1.. run tag @s add manic.hurt
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 1.5
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.vex.charge hostile @a

## Frames A
item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360035}
execute if entity @s[tag=manic.hurt] run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360036}