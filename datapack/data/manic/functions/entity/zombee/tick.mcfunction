## Hurt Detection
tag @s remove manic.hurt
execute store result score @s manic.dummy run data get entity @s HurtTime
execute if score @s manic.dummy matches 1.. run tag @s add manic.hurt
execute if score @s manic.dummy matches 9 run playsound minecraft:entity.bee.hurt hostile @a ~ ~ ~ 1 0.5

## Frames Default
execute unless score @s manic.bee_frame matches 1.. run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360042}
execute unless score @s manic.bee_frame matches 1.. run execute if entity @s[tag=manic.hurt] run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360043}

## Frames Sting
execute if score @s manic.bee_frame matches 10 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360044}
execute if score @s manic.bee_frame matches 9 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360044}
execute if score @s manic.bee_frame matches 8 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360045}
execute if score @s manic.bee_frame matches 7 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360045}
execute if score @s manic.bee_frame matches 6 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360046}
execute if score @s manic.bee_frame matches 5 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360046}
execute if score @s manic.bee_frame matches 4 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360047}
execute if score @s manic.bee_frame matches 3 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360047}
execute if score @s manic.bee_frame matches 2 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360048}
execute if score @s manic.bee_frame matches 1 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360048}
execute if score @s manic.bee_frame matches 2 run function manic:entity/zombee/ai/attack
execute if score @s manic.bee_frame matches 1.. run scoreboard players remove @s manic.bee_frame 1