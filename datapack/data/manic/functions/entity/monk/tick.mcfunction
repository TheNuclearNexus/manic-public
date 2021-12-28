## Hurt Detection
tag @s remove manic.hurt
execute store result score @s manic.dummy run data get entity @s HurtTime
execute if score @s manic.dummy matches 1.. run tag @s add manic.hurt
execute if score @s manic.dummy matches 9 run playsound manic:entity.monk.hurt neutral @a
execute if score @s manic.dummy matches 9 run scoreboard players reset @s manic.default2

## Frames Default
item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360108}
execute if predicate manic:moving run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360110}

## Frames Hurt
item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360106}
execute if entity @s[tag=manic.hurt] run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360107}
execute if entity @s[tag=manic.hurt] run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360109}
execute if entity @s[tag=manic.hurt] if predicate manic:moving run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360111}

## Additional Frames
execute if score @s manic.default3 matches 1.. run effect give @s slowness 1 255 true
execute if score @s manic.default3 matches 1.. run data modify entity @s Rotation[1] set value 45
execute if score @s manic.default2 matches 1 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360116}
execute if score @s manic.default2 matches 2 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360112}
execute if score @s manic.default2 matches 3 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360115}
execute if score @s manic.default2 matches 4 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360113}
execute if score @s manic.default2 matches 5 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360114}