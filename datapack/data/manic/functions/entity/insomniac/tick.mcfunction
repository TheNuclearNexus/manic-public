## Hurt Detection
tag @s remove manic.hurt
execute store result score @s manic.dummy run data get entity @s HurtTime
execute if score @s manic.dummy matches 1.. run tag @s add manic.hurt
execute if score @s manic.dummy matches 9 run playsound minecraft:entity.vindicator.hurt neutral @a

## Frames Default
item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360013}
execute if predicate manic:moving run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360014}

## Frames Hurt
item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360012}
execute if entity @s[tag=manic.hurt] run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360015}
execute if entity @s[tag=manic.hurt] run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360016}
execute if entity @s[tag=manic.hurt] if predicate manic:moving run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360017}