## Hurt Detection
tag @s remove pht.hurt
execute store result score @s pht.dummy run data get entity @s HurtTime
execute if score @s pht.dummy matches 1.. run tag @s add pht.hurt
execute if entity @s[nbt={HurtTime:9s}] run playsound pht:pht.entity.necromorph.hurt hostile @a

## Frames A
particle smoke ~ ~1.25 ~ 0.5 0.25 0.5 0.1 1
item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360038}
execute if predicate pht:moving run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360040}
execute if predicate pht:moving if predicate pht:chance/coinflip run particle soul_fire_flame ~ ~1.25 ~ 0.5 0.25 0.5 0.1 1

## Frames B
execute if entity @s[tag=pht.hurt] run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360039}
execute if entity @s[tag=pht.hurt] if predicate pht:moving run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360041}