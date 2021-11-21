## Hurt Detection
tag @s remove pht.hurt
execute store result score @s pht.dummy run data get entity @s HurtTime
execute if score @s pht.dummy matches 1.. run tag @s add pht.hurt
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 1.5
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.vex.charge hostile @a

## Frames A
item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360035}
execute if entity @s[tag=pht.hurt] run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360036}