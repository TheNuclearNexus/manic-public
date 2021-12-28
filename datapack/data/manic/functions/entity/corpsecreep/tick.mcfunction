# vvv This REALLY sucks but I have to do it for it to accurately follow the player. vvv
execute if entity @e[type=minecraft:player,distance=..16,gamemode=!creative,gamemode=!spectator] run function manic:entity/corpsecreep/track

## Ignited
execute as @s[tag=manic.corpsecreep.ignited] run scoreboard players add @s manic.creep_fuse 1
execute if score @s[tag=manic.corpsecreep.ignited] manic.creep_fuse matches 30.. run function manic:entity/corpsecreep/fuse/detonate

## Hurt Detection
tag @s remove manic.hurt
execute store result score @s manic.dummy run data get entity @s HurtTime
execute if score @s manic.dummy matches 1.. run tag @s add manic.hurt
execute if score @s manic.dummy matches 9 run playsound minecraft:entity.creeper.hurt hostile @a[distance=0..16] ~ ~ ~ 0.25 0.75
execute if score @s manic.dummy matches 9 run playsound minecraft:block.grass.break hostile @a[distance=0..16] ~ ~ ~ 0.5 0

## Frames Default
item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360070}
execute if predicate manic:moving run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360072}
item replace entity @s[tag=manic.corpsecreep.ignited] weapon.mainhand with minecraft:slime_ball{CustomModelData:8360074}

## Frames Hurt
execute if entity @s[tag=manic.hurt] run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360071}
execute if entity @s[tag=manic.hurt] if predicate manic:moving run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360073}
execute if entity @s[tag=manic.hurt] run item replace entity @s[tag=manic.corpsecreep.ignited] weapon.mainhand with minecraft:slime_ball{CustomModelData:8360075}