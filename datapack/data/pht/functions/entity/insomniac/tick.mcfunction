## Hurt Detection
tag @s remove pht.hurt
execute store result score @s pht.dummy run data get entity @s HurtTime
execute if score @s pht.dummy matches 1.. run tag @s add pht.hurt
execute if score @s pht.dummy matches 9 run playsound minecraft:entity.vindicator.hurt hostile @a

## Frames Default
item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360013}
execute if predicate pht:moving run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360014}

## Frames Hurt
item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360012}
execute if entity @s[tag=pht.hurt] run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360015}
execute if entity @s[tag=pht.hurt] run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360016}
execute if entity @s[tag=pht.hurt] if predicate pht:moving run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360017}