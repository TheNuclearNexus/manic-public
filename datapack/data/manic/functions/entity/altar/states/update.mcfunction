execute if score @s manic.default matches 0 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360090}
execute if score @s manic.default matches 0 at @s run setblock ~ ~ ~ air
execute if score @s manic.default matches 1 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360091}
execute if score @s manic.default matches 1 at @s run setblock ~ ~ ~ minecraft:light[level=5]
execute if score @s manic.default matches 2 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360092}
execute if score @s manic.default matches 2 at @s run setblock ~ ~ ~ minecraft:light[level=8]
execute if score @s manic.default matches 3 run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360093}
execute if score @s manic.default matches 3 at @s run setblock ~ ~ ~ minecraft:light[level=12]