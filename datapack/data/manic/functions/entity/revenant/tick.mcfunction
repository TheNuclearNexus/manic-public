## Hurt Detection
tag @s remove manic.hurt
execute store result score @s manic.dummy run data get entity @s HurtTime
execute if score @s manic.dummy matches 1.. run tag @s add manic.hurt
execute if entity @s[nbt={HurtTime:9s}] run playsound manic:entity.revenant.hurt hostile @a

## Frames A
execute if predicate manic:chance/fourth run particle smoke ~ ~1.25 ~ 0.5 0.25 0.5 0.1 1
item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360038}
execute if predicate manic:revenant_moving run item replace entity @s[tag=!manic.snared] armor.head with minecraft:slime_ball{CustomModelData:8360040}
execute if predicate manic:revenant_moving if predicate manic:chance/fifth run particle soul_fire_flame ~ ~1.25 ~ 0.5 0.25 0.5 0.1 1

## Frames B
execute if entity @s[tag=manic.hurt] run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360039}
execute if entity @s[tag=manic.hurt] if predicate manic:revenant_moving run item replace entity @s[tag=!manic.snared] armor.head with minecraft:slime_ball{CustomModelData:8360041}