## Hurt Detection
tag @s remove manic.hurt
execute store result score @s manic.dummy run data get entity @s HurtTime
execute if score @s manic.dummy matches 1.. run tag @s add manic.hurt
execute if entity @s[nbt={HurtTime:9s}] run playsound manic:entity.spook.hurt hostile @a

## Frames A
item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360000}
execute if predicate manic:moving run item replace entity @s[tag=!manic.snared] armor.head with minecraft:slime_ball{CustomModelData:8360002}

## Frames B
execute if entity @s[tag=manic.hurt] run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360001}
execute if entity @s[tag=manic.hurt] if predicate manic:moving run item replace entity @s[tag=!manic.snared] armor.head with minecraft:slime_ball{CustomModelData:8360003}