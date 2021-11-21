## Hurt Detection
tag @s remove pht.hurt
execute store result score @s pht.dummy run data get entity @s HurtTime
execute if score @s pht.dummy matches 1.. run tag @s add pht.hurt
execute if score @s pht.dummy matches 9 run playsound minecraft:entity.bee.hurt hostile @a ~ ~ ~ 1 0.5

## Frames Default
execute unless score @s pht.bee_frame matches 1.. run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360042}
execute unless score @s pht.bee_frame matches 1.. run execute if entity @s[tag=pht.hurt] run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360043}

## Frames Sting
execute if score @s pht.bee_frame matches 10 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360044}
execute if score @s pht.bee_frame matches 9 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360044}
execute if score @s pht.bee_frame matches 8 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360045}
execute if score @s pht.bee_frame matches 7 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360045}
execute if score @s pht.bee_frame matches 6 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360046}
execute if score @s pht.bee_frame matches 5 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360046}
execute if score @s pht.bee_frame matches 4 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360047}
execute if score @s pht.bee_frame matches 3 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360047}
execute if score @s pht.bee_frame matches 2 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360048}
execute if score @s pht.bee_frame matches 1 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360048}
execute if score @s pht.bee_frame matches 2 run function pht:entity/zombee/ai/attack
execute if score @s pht.bee_frame matches 1.. run scoreboard players remove @s pht.bee_frame 1