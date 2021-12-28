## Hurt Detection
tag @s remove manic.hurt
execute store result score @s manic.dummy run data get entity @s HurtTime
execute if score @s manic.dummy matches 1.. run tag @s add manic.hurt
execute if entity @s[nbt={HurtTime:9s}] run playsound manic:entity.mirage.hurt hostile @a ~ ~ ~ 1

execute if block ~ ~ ~ #manic:air as @s[tag=!manic.mirage.disabled] run function manic:entity/mirage/disable
execute if block ~ ~ ~ #manic:air run scoreboard players add @s manic.default3 1
execute unless block ~ ~ ~ #manic:air run scoreboard players reset @s manic.default3
execute if score @s manic.default3 matches 30.. if predicate manic:chance/sixth if predicate manic:chance/coinflip run function manic:entity/decay/despawn
execute if block ~ ~ ~ water as @s[tag=manic.mirage.disabled] run function manic:entity/mirage/enable

## Frames A
item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360096}
execute if score @s manic.default matches 1 if score @s manic.default2 matches 0 run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360098}
execute if score @s manic.default matches 0 if score @s manic.default2 matches 0 run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360100}
execute if score @s manic.default matches 1 if score @s manic.default2 matches 1 run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360102}
execute if score @s manic.default matches 0 if score @s manic.default2 matches 1 run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360104}

## Frames B
execute if entity @s[tag=manic.hurt] run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360097}
execute if entity @s[tag=manic.hurt] if score @s manic.default matches 1 if score @s manic.default2 matches 0 run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360099}
execute if entity @s[tag=manic.hurt] if score @s manic.default matches 0 if score @s manic.default2 matches 0 run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360101}
execute if entity @s[tag=manic.hurt] if score @s manic.default matches 1 if score @s manic.default2 matches 1 run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360103}
execute if entity @s[tag=manic.hurt] if score @s manic.default matches 0 if score @s manic.default2 matches 1 run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360105}

## Charging
execute as @e[type=minecraft:boat,distance=0..1.5] at @s run function manic:entity/mirage/break_boat